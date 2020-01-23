passes:
	clang++ -O2 -S -emit-llvm -mllvm -print-after-all loop_unroll.cpp > passes.log 2>&1

dot:
	clang++ -O2 -S -emit-llvm loop_unroll.cpp
	opt-6.0 -dot-cfg loop_unroll.ll -o /dev/null
	dot -Tpdf cfg._Z7get_resi.dot -o get_res.pdf
	dot -Tpdf cfg._Z17get_res_no_unrolli.dot -o get_res_no_unroll.pdf
	dot -Tpdf cfg._Z14get_res_unrolli.dot -o get_res_unroll.pdf
	dot -Tpdf cfg._Z19get_res_unroll_fulli.dot -o get_res_unroll_full.pdf
	dot -Tpdf cfg._Z17get_res_unroll_12i.dot -o get_res_unroll_12.pdf

clean:
	rm -f *.o *.out *.log *.pdf *.dot