all:
	as hello.asm --32 -o hello.o
	gcc -o hello.elf -m32 hello.o -nostdlib

clean:
	rm -f *.o *.elf