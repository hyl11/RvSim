#include<stdio.h>
#include<math.h>
#include<time.h>
#include <elf.h>
#include<stdlib.h>
#include "Reg_def.h"

//主存
unsigned int memory[100000000]={0};
//内存数组相对于elf要求的内存地址的偏移，offset + elf_addr = memory_addr
Elf64_Addr memory_offset_2_elf;
//寄存器堆
REG reg[32]={0};
//寄存器堆使用情况,用来控制流水线数据冒险，初始状态均是没有即将被写入的状态
int reg_using[32] = {0};
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
REG R_rs1,R_rs2,R_rd;

void simulate();

void IF();

void ID();

void EX();

void MEM();

void WB();

//符号扩展
int R_ext_signed(unsigned int src,int bit);

//获取指定位,从begin到end，闭区间，从0开始计数 例如 10011 0-2位是011
unsigned R_getbit(unsigned inst,int b,int e);
//处理各种类型的指令,在cpu流水线的各个阶段
void handle_R_inst(unsigned inst,unsigned stage);
void handle_I_inst(unsigned inst,unsigned stage);
void handle_U_inst(unsigned inst,unsigned stage);
void handle_S_inst(unsigned inst,unsigned stage);

//根据译码结果生成ID_EX中的信号
void inst_2_sig();
//分别对四种指令类型进行 处理生成信号
void inst_2_sig_R();
void inst_2_sig_I();
void inst_2_sig_S();
void inst_2_sig_U();
