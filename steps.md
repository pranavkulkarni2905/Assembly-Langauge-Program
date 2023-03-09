#STEPS TO RUN ASSEMBLY LANGUAGE PROGRAM

1.create your own directory
2. CD dir_name
3. Save your file with file_name.asm
4. Assembles the program:  nasm -f elf64 file_name.asm ( if your program executed without any error ,it creates .o file)
5. Then load the program : ld -o file_name file_name.o
6.  Execiute : ./file_name
