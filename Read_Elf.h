#include <stdio.h>
#include <string.h>
#include "Simulation.h"

void read_elf(char* path);
void read_elf_header();
void load_elf_2_memory();
void print_pro_header(int i,Elf64_Phdr* pro_header);
void print_elf_header();

