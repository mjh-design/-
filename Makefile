
GCC = g++
CFLAGS = -O2 -std=c++14
SSEFLAGS = -msse2 -mssse3 -msse4.1 -msse4.2 -mavx -march=native    #-march=native是一个GCC编译器的选项，它告诉编译器为当前的CPU架构和指令集生成优化的代码
#-msse2 -mssse3 -msse4.1 -msse4.2 -mavx编译sse,avx指令集对应的函数需要添加这些参数
FILES = elastic.out throughput.out

all: $(FILES) 

elastic.out: elastic.cpp
	$(GCC) $(CFLAGS) $(SSEFLAGS) -o elastic.out elastic.cpp

throughput.out: throughput.cpp
	$(GCC) $(CFLAGS) $(SSEFLAGS) -o throughput.out throughput.cpp

clean:
	rm $(all) -f *~ *.o *.out
