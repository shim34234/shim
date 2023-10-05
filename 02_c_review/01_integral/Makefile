all: 
	make clean
	make build
	make plot

build :
	gcc -o main.exe main.c 
	main.exe

plot:
	gnuplot bar.bat

clean:
	del *.o *.exe

