all:
	clang++ -O2 main.cpp source1.cpp source2.cpp

lto:
	clang++ -O2 -flto -c main.cpp source1.cpp source2.cpp
	clang++ -O2 -flto main.o source1.o source2.o

thin-lto:
	clang++ -O2 -flto=thin -c main.cpp source1.cpp source2.cpp
	clang++ -O2 -flto=thin main.o source1.o source2.o

clean:
	rm -f *.o *.out *.log