typedef unsigned long long REG;

struct IFID{
	unsigned int inst;
	int PC;
}IF_ID_Write,IF_ID_Read;


struct IDEX{
	int PC;
	//指令信息
	unsigned opcode;
	unsigned rs1,rs2,rd;
	unsigned func3,func7;
	unsigned int imm12;
	unsigned int imm20;
	unsigned int imm7;
	unsigned int imm5;
	//信号信息
	unsigned ALU_type;      //运算器操作类型，+ - ...
	REG ALU_src1,ALU_src2;    //运算器源操作数
	unsigned MEM_R,MEM_W;     //内存读写控制
	unsigned MEM_wide;      //8 16 32 64对于内存操作的宽度
}ID_EX_Write,ID_EX_Read;

struct EXMEM{
	int PC;
	unsigned inst;
	unsigned rs1,rs2,rd;
	Elf64_Addr mem_addr;

}EX_MEM_Write,EX_MEM_Read;

struct MEMWB{
	unsigned inst;
	unsigned rs1,rs2,rd;
	int PC;
	Elf64_Xword data_read;
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

//ALU 操作类型
#define ALU_ADD 0
#define ALU_SUB 1
#define ALU_MUL 2
#define ALU_DIV 3
#define ALU_AND 4
#define ALU_OR  5
#define ALU_XOR 6
#define ALU_SL  7
#define ALU_SR  8
#define ALU_MOD 9
#define ALU_COM 10      //比较
#define ALU_SYSCALL 11