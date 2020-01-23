all:
	clang++ -O2 $(ADDITIONAL_OPT) main.cpp inline.cpp

pass:
	clang++ -O2 $(ADDITIONAL_OPT) -Rpass=inline -c inline.cpp
	clang++ -O2 main.cpp inline.o

pass-missed:
	clang++ -O2 $(ADDITIONAL_OPT) -Rpass=inline -Rpass-missed=inline -c inline.cpp
	clang++ -O2 main.cpp inline.o

passes:
	clang++ -O2 $(ADDITIONAL_OPT) -S -emit-llvm -mllvm -print-after-all inline.cpp > passes.log 2>&1

all-inline: ADDITIONAL_OPT = -DWITH_INLINE
all-inline: all

pass-inline: ADDITIONAL_OPT = -DWITH_INLINE
pass-inline: pass

pass-missed-inline: ADDITIONAL_OPT = -DWITH_INLINE
pass-missed-inline: pass-missed

passes-inline: ADDITIONAL_OPT = -DWITH_INLINE
passes-inline: passes-inline

clean:
	rm -f *.o *.out *.log

