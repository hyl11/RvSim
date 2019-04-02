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
	int EXTop=0;
	unsigned int EXTsrc=0;

	char RegDst,ALUop,ALUSrc;
	char Branch,MemRead,MemWrite;
	char RegWrite,MemtoReg;

	OP = R_getbit(inst,0,6);
	

	switch(OP){
		case OP_R:{
			handle_R_inst(inst,CPU_ID);
			break;
		}
		case OP_L_I:
		case OP_UN_SIG_I:
		case OP_SIG_I:
		case OP_J_I:
		case OP_C_I:{
			handle_I_inst(inst,CPU_ID);
			break;
		}
		case OP_SB:
		case OP_S:{
			handle_S_inst(inst,CPU_ID);
			break;
		}
		case OP_UJ:
		case OP_U_A:
		case OP_U_L:{
			handle_U_inst(inst,CPU_ID);
			break;
		}
		default:{
			printf("Wrong Opcode! %x\n",OP);
			break;
		}

	}
		
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
				case 0:{
					
				}
				case 1:
				case 2:
				case 4:
				case 5:
				case 6:
				case 7:
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
	}
}
void handle_U_inst(unsigned inst,unsigned stage){
	switch(stage){
		case CPU_ID:{
			ID_EX_Write.rd = R_getbit(inst,7,11);
			ID_EX_Write.imm20 = R_getbit(inst,12,31);
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