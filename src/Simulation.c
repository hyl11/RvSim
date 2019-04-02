#include "Simulation.h"

extern void read_elf(char* path);
extern unsigned int endPC;
extern unsigned int entry_of_elf;


//指令运行数
long long inst_num=0;

//系统调用退出指示
int exit_flag=0;

int main()
{
	//解析elf文件,并读取至模拟内存
	char* path = "/home/lhy/Desktop/testcases/add";

	read_elf(path);

	//设置入口地址
	PC=entry_of_elf>>2;
	
	//设置全局数据段地址寄存器
//	reg[3]=gp;
	
	reg[2]=100000000/2;//栈基址 （sp寄存器）

	simulate();

	printf("simulate over!\n");

	return 0;
}

void simulate()
{
	//结束PC的设置
	int end=(int)endPC/4-1;
	while(PC!=end)
	{
		//运行
		IF();
		ID();
		EX();
		MEM();
		WB();

		//更新中间寄存器
		IF_ID_Read=IF_ID_Write;
		ID_EX_Read=ID_EX_Write;
		EX_MEM_Read=EX_MEM_Write;
		MEM_WB_Read=MEM_WB_Write;

        if(exit_flag==1)
            break;

        reg[0]=0;//一直为零
	}
}


//取指令
void IF()
{
	//write IF_ID_old
	IF_ID_Write.inst=memory[PC];
	PC=PC+1;
	IF_ID_Write.PC=PC;
}

//译码
void ID()
{
	//Read IF_ID
	unsigned int inst=IF_ID_Read.inst;
	//获取执行阶段所需的全部信息
	OP = ID_EX_Write.opcode = R_getbit(inst,0,6);
	rs1 = ID_EX_Write.rs1 = R_getbit(inst,15,19);
	rs2 = ID_EX_Write.rs2 = R_getbit(inst,20,24);
	imm5 = rd = ID_EX_Write.imm5 = ID_EX_Write.rd = R_getbit(inst,7,11);
	func3 = ID_EX_Write.func3 = R_getbit(inst,12,14);
	imm7 = func7 = ID_EX_Write.imm7 = ID_EX_Write.func7 = R_getbit(inst,25,31);
	imm12 = ID_EX_Write.imm12 = R_getbit(inst,20,31);
	imm20 = ID_EX_Write.imm20 = R_getbit(inst,12,31);
	
	//检查寄存器是否存在数据冒险，存在则暂停一周期
	if(reg_using[rs1] == 1 || reg_using[rs2] == 1){
		ID_EX_Write = ID_EX_Read;
		return;
	}
	//根据指令生成信号
	inst_2_sig();




}

//执行
void EX()
{
	//read ID_EX
	int temp_PC=ID_EX.PC;
	char RegDst=ID_EX.Ctrl_EX_RegDst;
	char ALUOp=ID_EX.Ctrl_EX_ALUOp;

	//Branch PC calulate
	//...

	//choose ALU input number
	//...

	//alu calculate
	int Zero;
	REG ALUout;
	switch(ALUOp){
	default:;
	}

	//choose reg dst address
	int Reg_Dst;
	if(RegDst)
	{

	}
	else
	{

	}

	//write EX_MEM_old
	EX_MEM_old.ALU_out=ALUout;
	EX_MEM_old.PC=temp_PC;
    //.....
}

//访问存储器
void MEM()
{
	//read EX_MEM

	//complete Branch instruction PC change

	//read / write memory

	//write MEM_WB_old
}


//写回
void WB()
{
	//read MEM_WB

	//write reg
}

Elf64_Addr elf_mem_2_mem(Elf64_Addr elf_addr){
	return elf_addr + memory_offset_2_elf;
}
Elf64_Addr mem_2_elf_mem(Elf64_Addr addr){
	return addr - memory_offset_2_elf;
}

unsigned R_getbit(unsigned inst,int b,int e){
	unsigned t0 = (1 << (e+1)) -1;
	unsigned t1 = t0 & inst;
	return t1 >> b;
}

void handle_R_inst(unsigned inst,unsigned stage){

	switch(stage){
		case CPU_ID:{
			ID_EX_Write.rd = R_getbit(inst,7,11);
			ID_EX_Write.rs1 = R_getbit(inst,15,19);
			ID_EX_Write.rs2 = R_getbit(inst,20,24);
			ID_EX_Write.func3 = R_getbit(inst,12,14);
			ID_EX_Write.func7 = R_getbit(inst,25,31);
			break;
		}
		case CPU_EXE:{
			func3 = ID_EX_Read.func3;
			func7 = ID_EX_Read.func7;
			R_rs1 = reg[ID_EX_Read.rs1];
			R_rs2 = reg[ID_EX_Read.rs2];
			switch(func3){
				//加减乘（不考虑溢出）
				case 0:{
					if(func7 == 0x0){
						R_rd = R_rs1 + R_rs2;
					}else if(func7 == 0x1){
						R_rd = R_rs1 * R_rs2;
					}else if(func7 == 0x20){
						R_rd = R_rs1 - R_rs2;
					}else{
						ERROR(inst,func3,func7,OP);
					}
					break;
				}
				//左移，溢出型64位乘法
				case 1:{
					if(func7 == 0){
						R_rd = R_rs1 << R_rs2;
					}else if(func7 == 1){
						__uint128_t result = (__uint128_t)R_rs1 * (__uint128_t)R_rs2;
						R_rd = (REG)(result >> 64);
					}else{
						ERROR(inst,func3,func7,OP);
					}
					break;
				}
				//小于则设置1
				case 2:{
					if(func7 == 0){ 
						if(R_rs1 < R_rs2){
							R_rd = 1;
						}else{
							R_rd = 0;
						}
					}else{
						ERROR(inst,func3,func7,OP);
					}
					break;
				}
				//异或，除法
				case 4:{
					if(func7 == 0){
						R_rd = R_rs1 ^ R_rs2;
					}else if(func7 == 1){
						R_rd = R_rs1 / R_rs2;
					}else{
						ERROR(inst,func3,func7,OP);
					}
					break;
				}
				//右移，包括逻辑右移和算数右移
				case 5:{
					if(func7 == 0){           //逻辑右移
						R_rd = R_rs1 >> R_rs2;
						R_rd = R_rd & ( 1<<(64-R_rs2) -1);
					}else if(func7 == 0x20){       //算数右移
						R_rd = R_rs1 >> R_rs2;
					}else{
						ERROR(inst,func3,func7,OP);
					}
					break;
				}
				case 6:{          //或和摸
					if(func7 == 0){        
						R_rd = R_rs1 | R_rs2;
					}else if(func7 == 1){
						R_rd = R_rs1 % R_rs2;
					}else{
						ERROR(inst,func3,func7,OP);
					}
					break;
				}
				case 7:{          //与
					if(func7 == 0){
						R_rd = R_rs1 & R_rs2;
					}else{
						ERROR(inst,func3,func7,OP);
					}
					break;
				}
				default{
					ERROR(inst,func3,func7,OP);
					break;
				}
			}
			break;
		}
	}
}
void handle_I_inst(unsigned inst,unsigned stage){
	switch(stage){
		case CPU_ID:{
			ID_EX_Write.rd = R_getbit(inst,7,11);
			ID_EX_Write.rs1 = R_getbit(inst,15,19);
			ID_EX_Write.func3 = R_getbit(inst,12,14);
			ID_EX_Write.imm12 = R_getbit(inst,20,31);
			break;
		}
		case CPU_EXE:{
			unsigned opcode = R_getbit(inst,0,6);
			func3 = ID_EX_Read.func3;
			R_rs1 = reg[ID_EX_Read.rs1];
			imm12 = (ID_EX_Read.imm12 << 20) >> 20;
			if(opcode == OP_L_I){
				switch(func3){
					case 0:{
						Elf64_Addr elfaddr = R_rs1 + imm12;
						R_rd = *(unsigned char*)(elf_mem_2_mem(elfaddr));
						R_rd = (R_rd << 56) >> 56;
						break;
					}
					case 1:{
						Elf64_Addr elfaddr = R_rs1 + imm12;
						R_rd = *(unsigned short*)(elf_mem_2_mem(elfaddr));
						R_rd = (R_rd << 48) >> 48;
						break;
					}
					case 2:{
						Elf64_Addr elfaddr = R_rs1 + imm12;
						R_rd = *(unsigned int*)(elf_mem_2_mem(elfaddr));
						R_rd = (R_rd << 32) >> 32;
						break;
					}
					case 3:{
						Elf64_Addr elfaddr = R_rs1 + imm12;
						R_rd = *(Elf64_Xword*)(elf_mem_2_mem(elfaddr));
						break;
					}
					default:{
						ERROR(inst,func3,0,opcode);
					}
				}
			}else if(opcode == OP_UN_SIG_I){
				switch(func3){
					case 0:{
						R_rd = R_rs1 + imm12;
						break;
					}
					case 1:{
						imm12 = imm12 & 0x1f;
						R_rd = R_rs1 << imm12;
						break;
					}
					case 2:{
						R_rd = R_rs1 < imm12 ? 1:0;
						break;
					}
					case 4:{
						R_rd = R_rs1 ^ imm12;
						break;
					}
					case 5:{       //逻辑右移和算数右移
						unsigned f7 = R_getbit(inst,25,31);
						imm12 = imm12 & 0x1f;
						if(f7 == 0){      //逻辑右移
							R_rd = R_rs1 >> imm12;
							R_rd = R_rd & ( 1<<(64-imm12) -1);
						}else{          //算数右移
							R_rd = R_rs1 >> imm12;
						}
						break;
					}
					case 6:{
						
					}

				}
			}
			break;
		}
	}
}
void handle_U_inst(unsigned inst,unsigned stage){
	switch(stage){
		case CPU_ID:{
			ID_EX_Write.rd = R_getbit(inst,7,11);
			ID_EX_Write.imm20 = R_getbit(inst,12,31);
			break;
		}
		case CPU_EXE:{
			unsigned opcode = R_getbit(inst,0,6);
			if(opcode == 0x6f){        //UJ

			}
			break;
		}
	}
}
void handle_S_inst(unsigned inst,unsigned stage){
	switch(stage){
		case CPU_ID:{
			ID_EX_Write.rs1 = R_getbit(inst,15,19);
			ID_EX_Write.rs2 = R_getbit(inst,20,24);
			ID_EX_Write.func3 = R_getbit(inst,12,14);
			ID_EX_Write.imm5 = R_getbit(inst,7,11);
			ID_EX_Write.imm7 = R_getbit(inst,25,31);
			break;
		}
	}
}

void ERROR(unsigned inst,unsigned func3,unsigned func7,unsigned OP){
	printf("Error! unvalid inst! OP=%x,func3=%x,func7=%x,inst=%x\n",OP,func3,func7,inst);
}

void inst_2_sig(){
	switch(OP){
		case 0x33:{
			inst_2_sig_R();
			break;
		}
		case 0x03:
		case 0x13:
		case 0x1B:
		case 0x67:
		case 0x73:{
			inst_2_sig_I();
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
			break;
		}
	}
}
void inst_2_sig_R(){

	ID_EX_Write.ALU_src1 = reg[rs1];
	ID_EX_Write.ALU_src2 = reg[rs2];
	ID_EX_Write.MEM_R = ID_EX_Write.MEM_W = 0;
	ID_EX_Write.MEM_wide = 32;

	switch(func3){
		//加减乘（不考虑溢出）
		case 0:{
			if(func7 == 0x0){
				ID_EX_Write.ALU_type = ALU_ADD;
			}else if(func7 == 0x1){
				ID_EX_Write.ALU_type = ALU_MUL;
			}else if(func7 == 0x20){
				ID_EX_Write.ALU_type = ALU_SUB;
			}
			break;
		}
		//左移，溢出型64位乘法
		case 1:{
			if(func7 == 0){
				ID_EX_Write.ALU_type = ALU_SL;
			}else if(func7 == 1){
				ID_EX_Write.ALU_type = ALU_MUL;
			}
			break;
		}
		//小于则设置1
		case 2:{
			ID_EX_Write.ALU_type = ALU_COM;
			break;
		}
		//异或，除法
		case 4:{
			if(func7 == 0){
				ID_EX_Write.ALU_type = ALU_XOR;
			}else if(func7 == 1){
				ID_EX_Write.ALU_type = ALU_DIV;
			}
			break;
		}
		//右移，包括逻辑右移和算数右移
		case 5:{
			ID_EX_Write.ALU_type = ALU_SR;
			break;
		}
		case 6:{          //或和摸
			if(func7 == 0){        
				ID_EX_Write.ALU_type = ALU_OR;
			}else if(func7 == 1){
				ID_EX_Write.ALU_type = ALU_MOD;
			}
			break;
		}
		case 7:{          //与
			ID_EX_Write.ALU_type = ALU_AND;
			break;
		}
	}
}
void inst_2_sig_I(){
	
}
void inst_2_sig_S();
void inst_2_sig_U();