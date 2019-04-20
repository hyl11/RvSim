#include "Simulation.h"
#include "util.h"
#include <stdio.h>
#include <string.h>


extern void read_elf(char* path);
unsigned int endPC = 0;;
extern unsigned int entry_of_elf;
extern REG memory_read(Elf64_Addr elf_addr,unsigned mem_width);
extern void memory_write(Elf64_Addr elf_adr,unsigned mem_width,REG data);
void print_memory(Elf64_Addr begin_addr,int bytes);

//指令运行数
long long inst_num=0;

//系统调用退出指示
int exit_flag=0;

unsigned int IF_SHOULD_STOP=0;      //译码阶段发现条件跳转指令，设置取指阶段等待       
int NEW_PC = 0;

int main(int argc,char* argv[])
{
	//解析elf文件,并读取至模拟内存
	char path[200];
	printf("请输入二进制文件的绝对路径\n");
	scanf("%s",path);
//	char* path="/home/lhy/Desktop/RvSim/testcase/mul-div";
	read_elf(path);

	//设置入口地址
	PC=entry_of_elf;
	
	reg[2]=100000000/2;//栈基址 （sp寄存器）

	simulate();
	if(argc != 1){
		if(strcmp(argv[1],"-memory") == 0){
			Elf64_Addr mem = 0;
			int bytes = 0;
			printf("请输入要打印的内存地址和字节数，字节数是16的整数倍,内存地址16进制表示,空格隔开\n");
			scanf("%x %d",&mem,&bytes);
			print_memory(mem,bytes);
		}
	}
	printf("total inst circle num is %d\n",inst_num);

	printf("simulate over!\n");

	return 0; 
}

void simulate()
{
	//结束PC的设置
	int end=(int)endPC/4-1;
	while(PC<=endPC)
	{
		inst_num ++;
		//运行
		WB();
		MEM();
		EX();
		ID();
		IF();

        if(exit_flag==1)
            break;

        reg[0]=0;//一直为零
	}
}


//取指令
void IF()
{
	//判断是否可以取指令，如果正在分析的指令存在控制冒险，则选择插入停顿，等待冒险
	if(IF_SHOULD_STOP != 0){
		IF_SHOULD_STOP =0;
		return;
	}
	IF_ID.inst=memory_read(PC,32) & 0xffffffff;
	IF_ID.PC=PC;
	PC=PC+4;
}

//译码
void ID()
{
	//Read IF_ID
	unsigned int inst=IF_ID.inst;
	ID_EX.PC = IF_ID.PC;
	//获取执行阶段所需的全部信息
	OP = ID_EX.inst.opcode = R_getbit(inst,0,6);
	rs1 = ID_EX.inst.rs1 = R_getbit(inst,15,19);
	rs2 = ID_EX.inst.rs2 = R_getbit(inst,20,24);
	imm5 = rd = ID_EX.inst.imm5 = ID_EX.inst.rd = R_getbit(inst,7,11);
	func3 = ID_EX.inst.func3 = R_getbit(inst,12,14);
	imm7 = func7 = ID_EX.inst.imm7 = ID_EX.inst.func7 = R_getbit(inst,25,31);
	imm12 = ID_EX.inst.imm12 = R_getbit(inst,20,31);
	imm20 = ID_EX.inst.imm20 = R_getbit(inst,12,31);
	

	//检查寄存器是否存在数据冒险，存在则暂停一周期        //TODO
	if(reg_using[rs1] > 0 || reg_using[rs2] > 0){
		IF_SHOULD_STOP = 1;
		ID_EX.isAbuble = 1;
		return;
	}
	ID_EX.isAbuble = 0;
	ID_EX.Rs1 = reg[rs1];
	ID_EX.Rs2 = reg[rs2];
	//根据指令生成信号
	inst_2_sig(inst);

}

void EX(){
	if(ID_EX.isAbuble == 1){
		EX_MEM.isAbuble = 1;
		return;
	}
	EX_MEM.isAbuble = 0;
	EX_MEM.inst = ID_EX.inst;
	EX_MEM.PC = ID_EX.PC;
	EX_MEM.Rs1 = ID_EX.Rs1;
	EX_MEM.Rs2 = ID_EX.Rs2;
	EX_MEM.sign = ID_EX.sign;
	REG ALU_OUT_result = 0;

	REG AluSrc1 = ID_EX.AluSrc1,AluSrc2=ID_EX.AluSrc2;
	switch(ID_EX.sign.ALUCtr){
		case ALU_ADD:{
			ALU_OUT_result = AluSrc1 + AluSrc2;
			break;
		}
		case ALU_SUB:{
			ALU_OUT_result = AluSrc1 - AluSrc2;
			break;
		}
		case ALU_MUL:{
			ALU_OUT_result = AluSrc1 * AluSrc2;
			//取高64位乘法
			if(ID_EX.inst.opcode == 0x33 && ID_EX.inst.func3 == 1){
				__int128_t result = AluSrc1 * AluSrc2;
				ALU_OUT_result = result >> 64;
			}
			break;
		}
		case ALU_DIV:{
			ALU_OUT_result = AluSrc1 / AluSrc2;
			break;
		}
		case ALU_AND:{
			ALU_OUT_result = AluSrc1 & AluSrc2;
			break;
		}
		case ALU_OR:{
			ALU_OUT_result = AluSrc1 | AluSrc2;
			break;
		}
		case ALU_XOR:{
			ALU_OUT_result = AluSrc1 ^ AluSrc2;
			break;
		}
		case ALU_SL:{
			ALU_OUT_result = AluSrc1 << AluSrc2;
			break;
		}
		case ALU_SR:{
			ALU_OUT_result = AluSrc1 >> AluSrc2;
			//逻辑右移
			if(ID_EX.inst.opcode == 0x33 && ID_EX.inst.func7 == 0){
				REG result = AluSrc1 >> AluSrc2;
				result = result & (1<<AluSrc2 -1);
				ALU_OUT_result = result;
			}
			break;
		}
		case ALU_MOD:{
			ALU_OUT_result = AluSrc1 % AluSrc2;
			break;
		}
		case ALU_COM:{
			ALU_OUT_result = AluSrc1 < AluSrc2 ? 1 : 0;
			break;
		}
		case ALU_SYSCALL:{
			EX_MEM.isAbuble = 1;
			if(reg[10] == 1){
				printf("%d",reg[11]);
			}else if(reg[10] == 10){
				exit_flag = 1;
			}
			break;
		}
	}
	EX_MEM.AluOut = ALU_OUT_result;
	//条件跳转语句的判断结果在这里得到，结果符合的话则直接将NewPC写入PC。
	unsigned opcode = ID_EX.inst.opcode;
	unsigned func = ID_EX.inst.func3;
	if(opcode == 0x63){
		switch(func){
			case 0:{
				if(ALU_OUT_result == 0)
					PC = NEW_PC;
				break;
			}
			case 1:{
				if(ALU_OUT_result != 0)
					PC = NEW_PC;
				break;
			}
			case 4:
			case 6:{
				if((long long)ALU_OUT_result < 0)
					PC = NEW_PC;
				break;
			}
			case 5:
			case 7:{
				if((long long)ALU_OUT_result >= 0)
					PC = NEW_PC;
				break;
			}
		}
//		if(func == 0 && ALU_OUT_result == 0){
//			PC = NEW_PC;
//		}else if(func == 1 && ALU_OUT_result != 0){
//			PC = NEW_PC;
//		}else if((func == 4 || func == 6) && ((long long)ALU_OUT_result < 0)){
//			PC = NEW_PC;
//		}else if((func == 5 || func == 7) && ((long long)ALU_OUT_result >= 0)){
//			PC == NEW_PC;
//		}
	}
}

void MEM(){
	//判断停顿
	if(EX_MEM.isAbuble == 1){
		MEM_WB.isAbuble = 1;
		return;
	}
	MEM_WB.isAbuble = 0;

	//拷贝相关的寄存器信息
	MEM_WB.PC = EX_MEM.PC;
	MEM_WB.inst = EX_MEM.inst;
	MEM_WB.sign = EX_MEM.sign;
	MEM_WB.AluOut = EX_MEM.AluOut;

	if(EX_MEM.sign.MemRe == 1){    //读内存操作
		MEM_WB.MemOut = memory_read(EX_MEM.AluOut,EX_MEM.sign.MemWide);
	}else if(EX_MEM.sign.MemWr == 1){       //写内存操作
		memory_write(EX_MEM.AluOut,EX_MEM.sign.MemWide,EX_MEM.Rs2);
	}
}

void WB(){
	int rd = MEM_WB.inst.rd;
	//停顿
	if(MEM_WB.isAbuble == 1){
		return;
	}else if(MEM_WB.sign.RegWr == 0){
		return;
	}else if(MEM_WB.sign.Mem2Reg == 1){      //访问内存操作
		reg[rd] = MEM_WB.MemOut;
	}else{
		reg[rd] = MEM_WB.AluOut;
	}
	if(reg_using[rd] > 0){
		reg_using[rd] --;
	}
}
void inst_2_sig(){
	
	switch(OP){
		case 0x33:
		case 0x3B:{
			inst_2_sig_R();
			reg_using[ID_EX.inst.rd] += ID_EX.sign.RegWr;
			break;
		}
		case 0x03:
		case 0x13:
		case 0x1B:
		case 0x67:
		case 0x73:{
			inst_2_sig_I();
			reg_using[ID_EX.inst.rd] += ID_EX.sign.RegWr;
			break;
		}
		case 0x63:
		case 0x23:{
			inst_2_sig_S();
			break;
		}
		case 0x17:
		case 0x37:
		case 0x6f:{
			inst_2_sig_U();
			reg_using[ID_EX.inst.rd] += ID_EX.sign.RegWr;
			break;
		}
	}
}
void inst_2_sig_R(){

	ID_EX.AluSrc1 = ID_EX.Rs1 =  reg[rs1];
	ID_EX.AluSrc2 = ID_EX.Rs2 = reg[rs2];

	ID_EX.sign.MemRe = ID_EX.sign.MemWr = 0;
	ID_EX.sign.MemWide = 32;
	ID_EX.sign.Mem2Reg = 0;
	ID_EX.sign.RegWr = 1;

	switch(func3){
		//加减乘（不考虑溢出）
		case 0:{
			if(func7 == 0x0){
				ID_EX.sign.ALUCtr = ALU_ADD;
			}else if(func7 == 0x1){
				ID_EX.sign.ALUCtr = ALU_MUL;
			}else if(func7 == 0x20){
				ID_EX.sign.ALUCtr = ALU_SUB;
			}
			break;
		}
		//左移，溢出型64位乘法
		case 1:{
			if(func7 == 0){
				ID_EX.sign.ALUCtr = ALU_SL;
			}else if(func7 == 1){
				ID_EX.sign.ALUCtr = ALU_MUL;
			}
			break;
		}
		//小于则设置1
		case 2:{
			ID_EX.sign.ALUCtr = ALU_COM;
			break;
		}
		//异或，除法
		case 4:{
			if(func7 == 0){
				ID_EX.sign.ALUCtr = ALU_XOR;
			}else if(func7 == 1){
				ID_EX.sign.ALUCtr = ALU_DIV;
			}
			break;
		}
		//右移，包括逻辑右移和算数右移
		case 5:{
			ID_EX.sign.ALUCtr = ALU_SR;
			break;
		}
		case 6:{          //或和摸
			if(func7 == 0){        
				ID_EX.sign.ALUCtr = ALU_OR;
			}else if(func7 == 1){
				ID_EX.sign.ALUCtr = ALU_MOD;
			}
			break;
		}
		case 7:{          //与
			ID_EX.sign.ALUCtr = ALU_AND;
			break;
		}
	}
}
void inst_2_sig_I(){

	//获得符号扩展
	ID_EX.AluSrc1 = reg[rs1];
	ID_EX.AluSrc2 = R_ext_signed(imm12,12);

	ID_EX.sign.RegWr = 1;
	ID_EX.sign.Mem2Reg = 0;
	ID_EX.sign.MemRe = ID_EX.sign.MemWr = 0;
	ID_EX.sign.MemWide = 32;
	ID_EX.sign.Mem2Reg = 0;

	switch(OP){
		case 0x03:{     //load
			ID_EX.sign.MemRe = 1;
			ID_EX.sign.ALUCtr = ALU_ADD;
			ID_EX.sign.Mem2Reg=1;
			ID_EX.sign.MemWide = R_pow(2,3+func3);
			break;
		}
		case 0x13:{          //64bit algorithm

			if(func3 == 0){
				ID_EX.sign.ALUCtr = ALU_ADD;
			}else if(func3 == 1){
				ID_EX.AluSrc2 = R_getbit(imm12,0,5);
				ID_EX.sign.ALUCtr = ALU_SL;
			}else if(func3 == 2){
				
				ID_EX.sign.ALUCtr = ALU_COM;
			}else if(func3 == 4){
				ID_EX.sign.ALUCtr = ALU_XOR;
			}else if(func3 == 5){
				ID_EX.sign.ALUCtr = ALU_SR;
				ID_EX.AluSrc2 = R_getbit(imm12,0,5);
			}else if(func3 == 6){
				ID_EX.sign.ALUCtr = ALU_OR;
			}else if(func3 == 7){
				ID_EX.sign.ALUCtr = ALU_AND;
			}
			break;
		}
		case 0x1B:{        //64 bit algorithm
			switch(func3){
				case 0x0:{       //addiw
					ID_EX.sign.ALUCtr = ALU_ADD;
					break;
				}
				case 0x1:{      //slliw
					ID_EX.AluSrc2 = R_getbit(imm12,0,5);
					ID_EX.sign.ALUCtr = ALU_SL;
					break;
				}
				case 0x5:{         //srli  srai
					ID_EX.sign.ALUCtr = ALU_SR;
					ID_EX.AluSrc2 = R_getbit(imm12,0,5);
					break;
				}
			}
			
			break;
		}
		case 0x67:{            //jalr ret
			ID_EX.AluSrc1 = IF_ID.PC;
			ID_EX.AluSrc2 = 4;
			ID_EX.sign.ALUCtr = ALU_ADD;
			//直接计算得到新的PC地址
			NEW_PC = ID_EX.Rs1 + imm12;
			if(NEW_PC % 2 == 1){
				NEW_PC -= 1;
			}
			if(PC == NEW_PC)
				exit_flag = 1;
			PC=NEW_PC;
			break;
		}
		case 0x73:{          //ecall       TODO
			ID_EX.sign.ALUCtr = ALU_ADD;
			ID_EX.sign.RegWr = 0;
			break;
		}

	}
}
void inst_2_sig_S(){
	if(OP == 0x23){       //S指令
		ID_EX.sign.MemWr = 1;
		ID_EX.sign.MemRe = 0;
		ID_EX.sign.MemWide = R_pow(2,func3+3);
		ID_EX.sign.ALUCtr = ALU_ADD;
		ID_EX.sign.RegWr = 0;
		ID_EX.sign.Mem2Reg = 0;

		ID_EX.AluSrc1 = reg[rs1];
		ID_EX.AluSrc2 = (imm7 << 5) | imm5;
		ID_EX.AluSrc2 = R_ext_signed(ID_EX.AluSrc2,12);

	}else if(OP == 0x63){        //SB指令,条件跳转
		ID_EX.sign.MemWr = 0;
		ID_EX.sign.MemRe = 0;
		ID_EX.sign.MemWide = 32;
		ID_EX.sign.RegWr = 0;
		ID_EX.sign.ALUCtr = ALU_SUB;
		ID_EX.sign.Mem2Reg = 0;

		ID_EX.AluSrc1 = reg[rs1];
		ID_EX.AluSrc2 = reg[rs2];

		unsigned offset = 0;
		offset = (imm5 & 0x1E) | ( (imm5&1) << 11) | ((imm7&0x40) << 6) | ((imm7&0x3f) << 5);
		offset = R_ext_signed(offset,13);
		NEW_PC = IF_ID.PC + offset;
		if(EX_MEM.PC != ID_EX.PC)
			IF_SHOULD_STOP = 1;
	}
}
void inst_2_sig_U(){
	ID_EX.sign.MemRe = ID_EX.sign.MemWr = 0;
	ID_EX.sign.MemWide = 32;
	ID_EX.sign.ALUCtr = ALU_ADD;
	ID_EX.sign.RegWr = 1;
	ID_EX.sign.Mem2Reg = 0;

	ID_EX.AluSrc1 = IF_ID.PC;
	ID_EX.AluSrc2 = R_ext_signed(imm20 << 12,32);

	if(OP == 0x37){
		ID_EX.AluSrc1 = 0;
	}else if(OP == 0x6f){
		ID_EX.AluSrc2 = 4;
		unsigned offset = (R_getbit(imm20,9,18) << 1) | (R_getbit(imm20,8,8) << 11);
		offset |= (R_getbit(imm20,19,19) << 20) | (R_getbit(imm20,0,7) << 12);
		offset = R_ext_signed(offset,21);
		NEW_PC = IF_ID.PC + offset;
		if(PC == NEW_PC)
			exit_flag = 1;
		PC = NEW_PC;
	}

}

