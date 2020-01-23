passes:
	clang++ -O2 -S -emit-llvm -mllvm -print-after-all inst_combine_double.cpp > inst_combine_double.log 2>&1
	clang++ -O2 -S -emit-llvm -mllvm -print-after-all inst_combine_int.cpp > inst_combine_int.log 2>&1
	clang++ -O2 -S -emit-llvm -mllvm -print-after-all inst_combine_uint.cpp > inst_combine_uint.log 2>&1

ir:
	clang++ -O2 -S -emit-llvm inst_combine_double.cpp
	clang++ -O2 -S -emit-llvm inst_combine_int.cpp
	clang++ -O2 -S -emit-llvm inst_combine_uint.cpp

clean:
	rm -f *.o *.out *.log *.pdf *.dot *.ll