all:
	clang++ -O2 $(ADDITIONAL_OPT) main.cpp branch.cpp

disasm:
	clang++ -O2 -c branch.cpp
	objdump -d branch.o > branch.asm
	clang++ -O2 -DWITH_EXPECT -c branch.cpp
	objdump -d branch.o > branch_with_expect.asm


with-expect: ADDITIONAL_OPT = -DWITH_EXPECT
with-expect: all

clean:
	rm -f *.o *.out *.log *.asm