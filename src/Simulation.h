#include<stdio.h>
#include<math.h>
#include<time.h>
#include <elf.h>
#include<stdlib.h>
#include "Reg_def.h"

#define OP_JAL 111

#define F3_ADD 0
#define F3_MUL 0

#define F7_MSE 1
#define F7_ADD 0


#define F3_ADDI 0

#define OP_SW 35
#define F3_SB 0

#define OP_LW 3
#define F3_LB 0

#define OP_BEQ 99
#define F3_BEQ 0

#define OP_IW 27
#define F3_ADDIW 0

#define OP_RW 59
#define F3_ADDW 0
#define F7_ADDW 0


#define OP_SCALL 115
#define F3_SCALL 0
#define F7_SCALL 0

//主存
unsigned int memory[100000000]={0};
//内存数组相对于elf要求的内存地址的偏移，offset + elf_addr = memory_addr
Elf64_Addr memory_offset_2_elf;
//寄存器堆
REG reg[32]={0};
//PC
int PC=0;


//各个指令解析段
unsigned int OP=0;
unsigned int func3=0,func7=0;
int shamt=0;
unsigned int rs1=0,rs2=0,rd=0;
unsigned int imm12=0;
unsigned int imm20=0;
unsigned int imm7=0;
unsigned int imm5=0;
REG R_rs1,R_rs2,R_rd1;

void simulate();

void IF();

void ID();

void EX();

void MEM();

void WB();

Elf64_Addr elf_mem_2_mem(Elf64_Addr elf_addr);
Elf64_Addr mem_2_elf_mem(Elf64_Addr addr);
//符号扩展
int R_ext_signed(unsigned int src,int bit);

//获取指定位,从begin到end，闭区间，从0开始计数 例如 10011 0-2位是011
unsigned R_getbit(unsigned inst,int b,int e);
//处理各种类型的指令,在cpu流水线的各个阶段
void handle_R_inst(unsigned inst,unsigned stage);
void handle_I_inst(unsigned inst,unsigned stage);
void handle_U_inst(unsigned inst,unsigned stage);
void handle_S_inst(unsigned inst,unsigned stage);
