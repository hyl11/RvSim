typedef unsigned long long REG;

struct IFID{
	unsigned int inst;
	int PC;
}IF_ID_Write,IF_ID_Read;


struct IDEX{
	int Rd,Rt;
	int PC;
	int Imm;
	REG Reg_Rs,Reg_Rt;

	char Ctrl_EX_ALUSrc;
	char Ctrl_EX_ALUOp;
	char Ctrl_EX_RegDst;

	char Ctrl_M_Branch;
	char Ctrl_M_MemWrite;
	char Ctrl_M_MemRead;

	char Ctrl_WB_RegWrite;
	char Ctrl_WB_MemtoReg;

}ID_EX_Write,ID_EX_Read;

struct EXMEM{
	int PC;
	int Reg_dst;
	REG ALU_out;
	int Zero;
	REG Reg_Rt;

	char Ctrl_M_Branch;
	char Ctrl_M_MemWrite;
	char Ctrl_M_MemRead;

	char Ctrl_WB_RegWrite;
	char Ctrl_WB_MemtoReg;

}EX_MEM_Write,EX_MEM_Read;

struct MEMWB{
	unsigned int Mem_read;
	REG ALU_out;
	int Reg_dst;
		
	char Ctrl_WB_RegWrite;
	char Ctrl_WB_MemtoReg;

}MEM_WB_Write,MEM_WB_Read;

//指令类型定义
//R
#define OP_R 0x33
//I
#define OP_L_I 0x3
#define OP_UN_SIG_I 0x13
#define OP_SIG_I 0x1B
#define OP_J_I 0x67
#define OP_C_I 0x73
//S
#define OP_S 0x23
//SB
#define OP_SB 0x63
//U
#define OP_U_A 0x17
#define OP_U_L 0x37
//UJ
#define OP_UJ 0x6f

//cpu流水线阶段
#define CPU_IF 0
#define CPU_ID 1
#define CPU_EXE 2
#define CPU_MEM 3
#define CPU_WB 4