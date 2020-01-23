all:
	clang++ -O2 $(ADDITIONAL_OPT) main.cpp loop_unroll.cpp

measure: ADDITIONAL_OPT = -DMEASURE_GOAL=get_res
measure: all

measure-no-unroll: ADDITIONAL_OPT = -DMEASURE_GOAL=get_res_no_unroll
measure-no-unroll: all

measure-unroll: ADDITIONAL_OPT = -DMEASURE_GOAL=get_res_unroll
measure-unroll: all

measure-unroll-full: ADDITIONAL_OPT = -DMEASURE_GOAL=get_res_unroll_full
measure-unroll-full: all

measure-unroll-12: ADDITIONAL_OPT = -DMEASURE_GOAL=get_res_unroll_12
measure-unroll-12: all

clean:
	rm -f *.o *.out *.log

