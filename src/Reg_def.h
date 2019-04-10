typedef unsigned long long REG;

struct Inst{
	unsigned opcode;
	unsigned rs1,rs2,rd;
	unsigned func3,func7;
	unsigned int imm12;
	unsigned int imm20;
	unsigned int imm7;
	unsigned int imm5;
};

struct Sign{
	//信号信息
	unsigned ALUCtr;      //运算器操作类型，+ - ..
	unsigned MemRe,MemWr;     //内存读写控制
	unsigned MemWide;      //8 16 32 64对于内存操作的宽度
	unsigned PCSel;         //0代表选择PC+4，否则选择计算得到跳转地址
	unsigned Mem2Reg;       //1代表将内存读出数据写入寄存器堆
	unsigned RegWr;         //1代表写入寄存器堆
};


struct IFID{
	unsigned int isAbuble;  //是否是插入的流水线停顿 1则代表是停顿
	unsigned int inst;
	int PC;
}IF_ID;


struct IDEX{
	unsigned int isAbuble;  //是否是插入的流水线停顿
	int PC;
	//指令信息
	struct Inst inst;
	//寄存器数据
	REG Rs1,Rs2;
	//分析得到ALU操作数
	REG AluSrc1,AluSrc2;

	struct Sign sign;
	
}ID_EX;

struct EXMEM{

	unsigned int isAbuble;  //是否是插入的流水线停顿

	int PC;
	struct Inst inst;
	REG AluOut;
	REG Rs1,Rs2;

	struct Sign sign;

}EX_MEM;

struct MEMWB{

	unsigned int isAbuble;  //是否是插入的流水线停顿

	int PC;
	struct Inst inst;
	REG MemOut;
	REG AluOut;
	
	struct Sign sign;
}MEM_WB;

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
