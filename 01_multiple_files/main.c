#include <stdio.h>
#include "hyundai.h"

#define K1 124

int main() {
    int y = foo(100);
    y = incr(y);

    printf("hello world %d\n", K1+y);
    return 0;
}


