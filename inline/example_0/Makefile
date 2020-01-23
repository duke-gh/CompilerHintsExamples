all:
	clang++ -O2 main.cpp inline.cpp

passes:
	clang++ -O2 -S -emit-llvm -mllvm -print-after-all inline.cpp > passes.log 2>&1

clean:
	rm -f *.o *.out *.log