#include <elf.h>
#include <stdio.h>
#include <stdlib.h>


void read_elf(char* path);
void read_elf_header();
void load_elf_2_memory();
void print_pro_header(int i,Elf64_Phdr* pro_header);
void print_elf_header();

//from Simulation.h
extern unsigned int memory[100000000];
extern Elf64_Addr memory_offset_2_elf;


FILE *elf=NULL;
Elf64_Ehdr elf64_hdr;
Elf64_Phdr elf64_phdr;
Elf64_Addr entry_of_elf ;

int open_file(char* elf_path)
{
	elf = fopen(elf_path,"rb");
	if(elf == NULL)
		return 0;
	return 1;
}

void read_elf(char* path)
{
	if(!open_file(path)){
		printf("cannot open the elf file! please check the path");
		return ;
	}

	//读取elf文件头
	fread(&elf64_hdr,1,sizeof(elf64_hdr),elf);
	entry_of_elf = elf64_hdr.e_entry;
	print_elf_header();
	load_elf_2_memory();
	fclose(elf);
}
//将segment加载至模拟内存。
void load_elf_2_memory(){
	unsigned phoff = (unsigned)elf64_hdr.e_phoff;
	unsigned short phnum = (unsigned short)elf64_hdr.e_phnum;
	unsigned short phsize = (unsigned short)elf64_hdr.e_phentsize;
	//定位程序头，读取程序头信息
	fseek(elf,phoff,SEEK_SET);
	Elf64_Phdr* pro_header = (Elf64_Phdr*)malloc(sizeof(Elf64_Phdr)*phnum);
	fread(pro_header,phnum,sizeof(Elf64_Phdr),elf);

	//拷贝segment到模拟内存的数组开始，并且映射数组起始位置内存地址为第一段segment的起始地址
	Elf64_Addr real_memory_addr = (Elf64_Addr)memory;
	memory_offset_2_elf = real_memory_addr - pro_header->p_vaddr;
	for(int i = 0; i < phnum; i ++){
		Elf64_Addr dst_addr = memory_offset_2_elf + pro_header->p_vaddr;
		fseek(elf,pro_header->p_offset,SEEK_SET);
		fread((void*)dst_addr,pro_header->p_filesz,1,elf);
		print_pro_header(i,pro_header);
		pro_header ++;
	}
}

void print_elf_header(){
	//打印魔数
	printf("they are magic number! \n");
	for(int i = 0; i<16; i++){
	    printf("%02x ",elf64_hdr.e_ident[i]);
	}

	printf("\n");
	printf("Obiect file type is %x \n",elf64_hdr.e_type);
	printf("Machine type is %x \n",elf64_hdr.e_machine);
	printf("Obiect file version is %x\n",elf64_hdr.e_version);
	printf("Entry point address is %x\n",elf64_hdr.e_entry);
	printf("Program header offset is %x\n",elf64_hdr.e_phoff);
	printf("Start of section headers: %d  bytes into  file\n",elf64_hdr.e_shoff);
	printf("Flags:  %x\n",elf64_hdr.e_flags);
	printf("Size of this header:  %d Bytes\n",elf64_hdr.e_ehsize);
	printf("Size of program headers: %d Bytes\n",elf64_hdr.e_phentsize);
	printf("Number of program headers: %d \n",elf64_hdr.e_phnum);
	printf("Size of section headers: %d Bytes\n",elf64_hdr.e_shentsize);
	printf("Number of section headers: %d \n",elf64_hdr.e_shnum);
	printf("Section header string table index: %x \n",elf64_hdr.e_shstrndx);
}

void print_pro_header(int i,Elf64_Phdr* pro_header){
	if(i == 0){
		printf("NO.        offset       Viraddr        filesize        memsize\n");
	}
	printf("%d          %x      %x       %x        %x        \n",
		i,pro_header->p_offset,pro_header->p_vaddr,pro_header->p_filesz,pro_header->p_memsz);
}

