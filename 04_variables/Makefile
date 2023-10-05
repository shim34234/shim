#c to asm(compiling)
main.s: main.c
	gcc -o main.s -S main.c

# asm to object (binary level) (assembling)
main.o: main.s
	as -o main.o main.s

#c to object(compling + assembling)
foo.o: foo.c
	gcc -c foo.c


#linking

all: main.o foo.o
	gcc -o main.exe main.o foo.o
	main.exe

clean:
	del *.exe *.s *.o
