all : test32 test64 testarm

test32.o : test32.S
	as --32 $< -o $@

test32 : test32.o
	ld -m elf_i386 $^ -o $@

test64.o : test64.S
	as --64 $< -o $@

test64 : test64.o
	ld -m elf_x86_64 $^ -o $@

testarm.o : testarm.S
	arm-linux-gnueabihf-as $< -o $@

testarm : testarm.o
	arm-linux-gnueabihf-ld $^ -o $@

.PHONY : clean

clean :
	rm -f test32.o test32 test64.o test64 testarm.o testarm
