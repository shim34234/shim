main.o: main.c 
	gcc -S main.c -o main.s
	as  -o main.o    main.s

foo.o: foo.c
	gcc -S  foo.c -o foo.s
	as  -o  foo.o    foo.s

incr.o: incr.c
	gcc -S incr.c -o incr.s
	as  -o incr.o    incr.s

all: clean2 main.o foo.o incr.o
	gcc -o main.exe main.o foo.o incr.o
	.\main.exe

dump:
	objdump -d -S main.exe > main_dis.s

clean2:
	del *.o *.exe

