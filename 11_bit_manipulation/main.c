#include <stdio.h>

int main () {

//                        b 0010 0001
    volatile unsigned char TMODE = 0x21;
    printf("TMODE is 0x%2X\n", TMODE);
// **single bit set 
// 오른쪽에서 index 위치는 offset 3만큼 떨어져 있다 = 오른쪽에서 4번째 비트 )
//                        b xxxx 1xxxx

    TMODE |= (1<<3);
    printf("TMODE is 0x%2X\n", TMODE);

// **single bit clear
// 오른쪽에서 index 위치는 offset 5만큼 떨어져 있다 = 오른쪽에서 6번 째 비트 )
//                        b xx0x xxxx
//                                  1<<5
//                                  |
//                                  V
//                          0010 0000
//        ~ inversion 결과 : 1101 1111
//                      &    xxxx xxxx
// ------------------------------------
//                          xx0x xxxx ->x의 의미는 값이 유지.

    TMODE &= ~(1<<5);
    printf("TMODE is 0x%02X\n", TMODE);


//bit toggle

    TMODE ^= (1<<7);
    printf("TMODE is 0x%02X\n", TMODE);

    TMODE ^= (1<<7);
    printf("TMODE is 0x%02X\n", TMODE);


//multi bit set

/*
    TMODE |= (1<<1);
    TMODE |= (1<<6);
*/
    TMODE |= (1<<6 | 1<<1);

    //0000 0001 
    //0100 0000 -> 6번 이동
    //0000 0010 ->1번 이동
    //0100 0010 -> or 취하면 두개를 동시에 켤 수 있음. multi bit set.

    printf("TMODE is 0x%02X\n", TMODE);


//multi bit clear

    TMODE &= ~(1<<6 | 1<<1);

    //0000 0001 
    //0100 0000 -> 6번 이동
    //0000 0010 ->1번 이동
    //1011 1101 -> and 연산자에 인버전 취하면 두개를 동시에 켤 수 있음. multi bit set.

    printf("TMODE is 0x%02X\n", TMODE);

// n비트 세팅(다른 값은 유지)
    TMODE = 0xE0;

    //b 1111 xxxx -> 상위 4비트(mode bit)를 1111로 세팅
    TMODE |= (0xF << 4) ;
    printf("TMODE is 0x%02X\n", TMODE);

    //b 1010 xxxx -> 상위 4비트(mode bit)를 1010로 세팅
    //에러 유발. 상위 4비트의 값에 따라 에러가 발생함
    TMODE |= (0xA << 4) ;
    printf("TMODE is 0x%02X\n", TMODE);

    //따라서 먼저 폭격 투하 해당 영역을 지운 뒤, or연산으로 공략해야함.

    TMODE &= ~(0XF << 4); //쓸 영역을 백지로 만들기 CLEAR 먼저 하고
    TMODE |= (0xA << 4) ; //OR연산
    printf("TMODE is 0x%02X\n", TMODE);

    TMODE &= ~(0XF << 4); //쓸 영역을 백지로 만들기
    printf("TMODE is 0x%02X\n", TMODE);

    //xxxx x1x1 
    TMODE |= 0X05;
    printf("TMODE is 0x%02X\n", TMODE);
    //특정 비트가 1인지 체크하는 방법, 해당 비트를 1 & and 연산하라

//   if ( TMODE & (1<<2) ) // ok  xxx1 x1xx
//   if ( TMODE & (1<<2) == 1) //버그
     if ( TMODE & (1<<2) == 4) //ok 
//  if ( TMODE & (1<<3) == 8 ) --> un-portable code
       printf("TMODE.2 is set \n");

// location independent bit compare
    if ( TMODE & (1<<2) == 0)  
       printf("TMODE.2 is clear \n");

    else //otherwise
       printf("TMODE.2 is set \n");

// blocking untill~~ (waiting)
// wait until TMODE.2 is set
while ( (TMODE & (1<<2)) == 0); 
//2번째 비트가 0 이 될 때까지 기다려야함.
//reach here, we can determine TMODE.2 is set
printf("reach here, TMODE.2 is set, 0x%02X\n", TMODE);

    return 0;
    
}
