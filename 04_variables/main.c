#include <stdio.h>

extern int foo(int);
extern int g1; //error
extern int g_open;

int main() {

    int gl = 4;
    //g1 = 12; //unexpected bug.(gl=12 original meaning)
    g_open = 12;

    int a = foo(2);
    a = a + 5;

    a = foo(2);
    a = foo(2);
    a = foo(2);
    a = foo(2);
    

    printf("Hello World %d\n", a);
    return 0;
}