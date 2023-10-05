#include <stdio.h>

extern int foo(int);

int main() {

    int a = foo(2);
    a = a + 5;

    printf("Hello World %d\n", a);
    return 0;
}