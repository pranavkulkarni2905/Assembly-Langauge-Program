## STEPS TO RUN ASSEMBLY LANGUAGE PROGRAM

- create your own directory mkdir dir_name
- CD dir_name
- Save your file with file_name.asm
- Assembles the program:  nasm -f elf64 file_name.asm ( if your program executed without any error ,it creates .o file)
- Then load the program : ld -o file_name file_name.o
- Execiute : ./file_name
