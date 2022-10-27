# If next line commented, use make debug G="-ggdb" for line numbers in GDB.
G=-ggdb
CFLAGS=-std=c11 $G -Wall -fmax-errors=10 -Wextra

binaryprime: main.c
	gcc $G $(CFLAGS) main.c -o binaryprime

launch: binaryprime	
	./binaryprime

debug: binaryprime	
	gdb -q binaryprime

clean:
	rm binaryprime*

git:
	git add .
	git commit -m "$m"
	git push
