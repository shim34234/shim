#include <stdio.h>

static int g1;
int g_open;

int foo(int a) {
    static int button_cnt = 0;
    button_cnt++;

    printf("button %d times pressed\n", button_cnt);
    
    g1 = g1 + 3;
    
    return a + g1 + 100;
}