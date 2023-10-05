#include <stdio.h>

int main() {

    int a = 0x12345678;
    printf("a is 0x%8X @ %p (allocated on %d bytes)\n", a, &a, sizeof(a));

//a의 주소를 담은 변수 p
//4 바이트를 갖고 있는 주소 형식의 데이터임. p 안에는 주소값이 있고, 그 주소는 4바이트의 메모리 한 영역을 가리킬 수 있다.
    int* p = &a; 
    printf("a is 0x%8X @ %p \n", *p, p);
    
    printf("p   (int*) is 0x%p\n", p);
    printf("p++ (int*) is 0x%p\n", p+1);


    char* bp = (char*)p;
    printf("bp is %p \n", bp);

    printf("[0x%p] : 0x%02X\n", bp+0, *(bp+0));
    printf("[0x%p] : 0x%02X\n", bp+1, *(bp+1));
    printf("[0x%p] : 0x%02X\n", bp+2, *(bp+2));
    printf("[0x%p] : 0x%02X\n", bp+3, *(bp+3));
//    printf("\n");
//    printf("[0x%p] : 0x%02X\n", p+1, *p+1);
//    printf("[0x%p] : 0x%02X\n", p+1, *(p+1));
//    printf("[0x%p] : 0x%02X\n", a, &a);

//**modification
    *(bp+2) = 0x5A; // move 되어서 SP,#0X4FE00 
                    // ST 하겠다 0X5A [SP#2]
                    // CPU에서 메모리 주소를 찾아가서 대체하겠다.                    

    printf("a    is 0x%8X\n", a);

//칩 스펙을 읽고, TIMER의 CONTROL register 주소가 0x000000000061FE0C 라면
//그리고, 그 register 영역이 4 bite 라면,

    #define TMRCNT_ADDR ((unsigned int*) 0x000000000061FE0C) //주소를 선언함 (칩 스펙에 주소가 저장되어 있다.)
    #define TMRCNT *(TMRCNT_ADDR) //주소에 접근

//*((unsigned int*) 0x000000000061FE0C) = 0xFBCD1200;
//                       *(TMRCNT_ADDR) = 0xFBCD1200;
//                               TMRCNT = 0xFBCD1200;
    TMRCNT = 0xFBCD1200;
    printf ("TMCNT is 0x%08X\n", TMRCNT);

    return 0;


}