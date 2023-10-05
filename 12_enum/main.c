#include <stdio.h>
typedef enum{
    SOT = 2, //start of timer, index dml dmlal..
    ROT = 0 //reset of timer
}TMR_STATUS;

//#define SOT 2 위 아래 똑같다.
//#define ROT 0

TMR_STATUS timer_is_reset(unsigned char TMR) {
    if(TMR & (1<< ROT))
        return ROT;
    else
        return SOT;

}
int main () {

// initial
    unsigned char TMODE = 0xF2; 

//SOT(START OF TIMER) bit set
    TMODE |= 1<<SOT;

//blocking utill~~(waiting)
//wait until mode.2 is set

    while ( (TMODE & (1<<SOT)) == 0); 
//2번째 비트가 0 이 될 때까지 기다려야함.
//reach here, we can determine TMODE.2 is set
    printf("reach here, TMODE.2 is set, 0x%02X\n", TMODE);

    return 0;
    
}
