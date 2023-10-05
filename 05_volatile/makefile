all_fast:
	gcc -O3 -o main.exe main.c
	objdump -d -S main.exe > main_dis_fast.s
	main.exe

all_slow:
	gcc -o main.exe main.c
	objdump -d -S main.exe > main_dis_slow.s
	main.exe

all:
	make all_slow
	make all_fast

clean:
	del *.o *.exe
