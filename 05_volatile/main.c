#include <stdio.h>

int main() {

//non volatile 
    int ABC_DATA = 3;
    int a = ABC_DATA;

    a = a+7;

    printf("a is %d\n",a);


//volatile int ADC_DATA_VOLATILE = GET_SAMPLE_FROM_ADC;

    volatile int ABC_DATA_VOLATILE = 3;
    int b = ABC_DATA_VOLATILE;

    b = b+7;

    printf("a is %d\n",b);


    return 0;

}