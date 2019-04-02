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
		IF_ID=IF_ID_old;
		ID_EX=ID_EX_old;
		EX_MEM=EX_MEM_old;
		MEM_WB=MEM_WB_old;

        if(exit_flag==1)
            break;

        reg[0]=0;//一直为零
	}
}


//取指令
void IF()
{
	//write IF_ID_old
	IF_ID_old.inst=memory[PC];
	PC=PC+1;
	IF_ID_old.PC=PC;
}

//译码
void ID()
{
	//Read IF_ID
	unsigned int inst=IF_ID.inst;
	int EXTop=0;
	unsigned int EXTsrc=0;

	char RegDst,ALUop,ALUSrc;
	char Branch,MemRead,MemWrite;
	char RegWrite,MemtoReg;

	rd=getbit(inst,7,11);
	fuc3=getbit(inst,0,0);
	//....


	if(OP==OP_R)
	{
		if(fuc3==F3_ADD&&fuc7==F7_ADD)
		{
            EXTop=0;
			RegDst=0;
			ALUop=0;
			ALUSrc=0;
			Branch=0;
			MemRead=0;
			MemWrite=0;
			RegWrite=0;
			MemtoReg=0;
		}
		else
		{
		   
		}
	}
	else if(OP==OP_I)
    {
        if(fuc3==F3_ADDI)
        {
            
        }
        else
        {
           
        }
    }
    else if(OP==OP_SW)
    {
        if(fuc3==F3_SB)
        {
           
        }
        else
        {
           
        }
    }
    else if(OP==OP_LW)
    {
        if(fuc3==F3_LB)
        {
			
        }
        else
        {

        }
    }
    else if(OP==OP_BEQ)
    {
        if(fuc3==F3_BEQ)
        {
			
        }
        else
        {
           
        }
    }
    else if(OP==OP_JAL)
    {
        
    }
    else
    {
		
    }

	//write ID_EX_old
	ID_EX_old.Rd=rd;
	ID_EX_old.Rt=rt;
	ID_EX_old.Imm=ext_signed(EXTsrc,EXTop);
	//...

	ID_EX_old.Ctrl_EX_ALUOp=ALUop;
	//....

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