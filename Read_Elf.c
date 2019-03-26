#include"Read_Elf.h"

FILE *elf=NULL;
Elf64_Ehdr elf64_hdr;


int open_file(char* elf_path)
{
	elf = fopen(elf_path,"r");
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
	read_Elf_header();

	fclose(elf);
}

void read_Elf_header()
{
	//file should be relocated
	fread(&elf64_hdr,1,sizeof(elf64_hdr),elf);

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

//void read_elf_sections()
//{
//
//	Elf64_Shdr elf64_shdr;
//
//	for(int c=0;c<snum;c++)
//	{
//		printf(" [%3d]\n",c);
//
//		//file should be relocated
//		fread(&elf64_shdr,1,sizeof(elf64_shdr),file);
//
//		printf(" Name: ");
//
//		printf(" Type: ");
//
//		printf(" Address:  ");
//
//		printf(" Offest:  \n");
//
//		printf(" Size:  ");
//
//		printf(" Entsize:  ");
//
//		printf(" Flags:   ");
//
//		printf(" Link:  ");
//
//		printf(" Info:  ");
//
//		printf(" Align: \n");
//
// 	}
//}
//
//void read_Phdr()
//{
//	Elf64_Phdr elf64_phdr;
//	for(int c=0;c<pnum;c++)
//	{
//		printf(" [%3d]\n",c);
//
//		//file should be relocated
//		fread(&elf64_phdr,1,sizeof(elf64_phdr),file);
//
//		printf(" Type:   ");
//
//		printf(" Flags:   ");
//
//		printf(" Offset:   ");
//
//		printf(" VirtAddr:  ");
//
//		printf(" PhysAddr:   ");
//
//		printf(" FileSiz:   ");
//
//		printf(" MemSiz:   ");
//
//		printf(" Align:   ");
//	}
//}
//
//
//void read_symtable()
//{
//	Elf64_Sym elf64_sym;
//	for(int c=0;c<symnum;c++)
//	{
//		printf(" [%3d]   ",c);
//
//		//file should be relocated
//		fread(&elf64_sym,1,sizeof(elf64_sym),file);
//
//		printf(" Name:  %40s   ");
//
//		printf(" Bind:   ");
//
//		printf(" Type:   ");
//
//		printf(" NDX:   ");
//
//		printf(" Size:   ");
//
//		printf(" Value:   \n");
//
//	}
//
//}
//
//
