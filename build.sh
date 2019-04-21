#/bin/bash
cd src
gcc -g util.c Read_Elf.c memory.c Simulation.c -o ../bin/RvSim
