main.o: main.c 
	gcc -Ic:\RESKILL\03_include\lib -S main.c -o main.s
	as  -o main.o    main.s

foo.o: foo.c
	gcc -S  foo.c -o foo.s
	as  -o  foo.o    foo.s

foo_rev.o: foo_rev.c
	gcc -s  foo_rev.c -o foo_rev.s
	as  -o  foo_rev.o    foo_rev.s

incr.o: incr.c
	gcc -S incr.c -o incr.s
	as  -o incr.o    incr.s

all_old: clean main.o foo.o incr.o
	gcc -o main.exe main.o foo.o incr.o
	main.exe

all: main.o foo.o incr.o lib/hmobis/*.o
	copy lib\hmobis\*.o .
	gcc -o main.exe main.o foo.o incr.o hal_hmobis.o hal_pwm.o hal_gpio.o
	main.exe

dump:
	objdump -d -S main.exe > main_dis.s

clean:
	del *.o *.exe

