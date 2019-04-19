#include <elf.h>
#include "Reg_def.h"

//主存
unsigned int memory[100000000]={0};
//内存数组相对于elf要求的内存地址的偏移，offset + elf_addr = memory_addr
Elf64_Addr memory_offset_2_elf;

Elf64_Addr elf_mem_2_mem(Elf64_Addr elf_addr){
	return elf_addr + memory_offset_2_elf;
}
Elf64_Addr mem_2_elf_mem(Elf64_Addr addr){
	return addr - memory_offset_2_elf;
}
REG memory_read(Elf64_Addr elf_addr,unsigned mem_width){
    REG  result = 0;
    Elf64_Addr mem_addr = elf_mem_2_mem(elf_addr);
    switch(mem_width){
        case 8:{
            result = *(unsigned char*)mem_addr;
            break;
        }
        case 16:{
            result = *(unsigned short*)mem_addr;
            break;
        }
        case 32:{
            result = *(unsigned int*)mem_addr;
            break;
        }
        case 64:{
            result = *(REG*)mem_addr;
            break;
        }
    }
    return result;
}
void memory_write(Elf64_Addr elf_addr,unsigned mem_width,REG data){
    Elf64_Addr mem_addr = elf_mem_2_mem(elf_addr);
    switch(mem_width){
        case 8:{
            *(unsigned char*)mem_addr = data & 0xff;
            break;
        }
        case 16:{
            *(unsigned short*)mem_addr = data & 0xffff;
            break;
        }
        case 32:{
            *(unsigned int*)mem_addr = data & 0xffffffff;
            break;
        }
        case 64:{
            *(REG*)mem_addr = data;;
            break;
        }
    }
}

void print_memory(Elf64_Addr begin_addr,Elf64_Addr end_addr){
    
}
