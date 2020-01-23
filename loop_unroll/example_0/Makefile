passes:
	clang++ -O2 -S -emit-llvm -mllvm -print-after-all loop_unroll.cpp > passes.log 2>&1

dot:
	opt-6.0 -dot-cfg get_res_before_unroll.ll -o /dev/null
	dot -Tpdf cfg._Z7get_resi.dot -o before_unroll.pdf
	opt-6.0 -dot-cfg get_res_after_unroll.ll -o /dev/null
	dot -Tpdf cfg._Z7get_resi.dot -o after_unroll.pdf

clean:
	rm -f *.o *.out *.log *.pdf *.dot