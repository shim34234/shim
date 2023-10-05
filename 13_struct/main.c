#include <stdio.h>
//
// int a0 = 1;
// int a1 = 2;
// int a2 = 3;
//
// int a[3] = {1,2,3};
//  --> 각 방의 크기를 일정하게 가져가야 함  a2는 1바이트만 할당할수 없음.


// 구조체는, 각방의 크기를 자유롭게 설정하는 개념..
// 원하는 크기만큼 세부적으로 변수를 메모리에 할당하고 싶을때... 구조체를 쓴다.


// 아래는 설계도이지, 실제 메모리에 할당된게 아님..
typedef struct {
    unsigned char CNFG1;
    unsigned char CNFG2;
    unsigned short MODE;
} ADC_CONFIG;


void mem_inspection(unsigned char* p, int s) {
    for(int i=0; i<s; i++) {
      printf("m[0x%p]: 0x%02X\n", p+i, *(p+i));
    }
}
void worker(ADC_CONFIG* x) {
    x->CNFG1 = 0xAF;
    x->MODE = 0xFFFF;
}


int main() {
    // memory allocation using ADC_CONFIG type
    // ADC_CONFIG로 정의된 설계도를 이용하여 땅을 사고 집을 짓고 구조적으로 분할
    // 그리고 초기값 할당 (냉장고,세탁기,책상... 구입 채워넣기.)
    ADC_CONFIG adc1 = {0x78, 0x56, 0xF002};
    mem_inspection((unsigned char*)&adc1, 4);


    // 기분전환겸, 냉장고 교체.. 티비 100인치 OLED설치. (내가 직접..)
    adc1.CNFG1 = 0x5A;
    adc1.CNFG2 = 0xBB;
    adc1.MODE = 0xAACC;
    mem_inspection((unsigned char*)&adc1, 4);


    // 구조체 타입을 가리키는 포인터 변수..
    ADC_CONFIG* p = &adc1;
    p->CNFG1 = 0xFF;
    p->MODE = 0xDF5A;
    mem_inspection((unsigned char*)p, 4);


    // 인테리어 업자에게, 우리집 주소/암호 알려주고, 침대, 책상.. 등등 배치해달라.. 간접적으로
    worker(&adc1);
    mem_inspection((unsigned char*)p, 4);


 // adc1.CNFG1 = 0x5A
    (*p).CNFG1 = 0x5A;
    mem_inspection((unsigned char*)p, 4);


    // ADC_CONFIG adc1; ---> ADC_CONFIG라는 설계도를 기반으로 메모리 할당받음.
    //
    // 자 그러면.. 이미 칩내부에 할당된 하드웨어 영역에 접근할때는 ??
    // (1) ADC_DATA는 주소 0xFF000000에 할당되어 있고 그 주소로부터 4바이트 영역이다.
    //    #define ADC_DATA (*(unsigned int*)(0xFF000000))
    //    ADC_DATA = 0x12345678;
    //  int ADC_DATA --> (X) 불필요함. 이미 0xFF000000에 하드웨어 존재함.
    //
    // (2) ADC_CONFIG는 주소 0xBB000000에 할당되어 있고 그주소로부터 4바이트인데
    //     다음처럼
    //  0xBB000000 -----> char CNFG1  
    //                    char CNFG2
    //                   short MODE
    //
    //     31  ..........   16 15 ......8  7 ........ 0
    //    +-------------------+-----------+------------+
    //    |      MODE         |    CNFG2  |   CNFG1    |
    //    +-------------------+-----------+------------+
    //  따라서 이영역 0xBB000000부터 4바이트에 접근하려면.
    //  #define ADC_REG (*(unsigned int*)(0xBB000000))
    //    ADC_REG &= ~(0xFF << 8);
    //    ADC_REG |=  (0x1A << 8); --> CNFG2영역에 0x1A쓰는 방법.
    //  
    // 구조체 타입을 써서 다음처럼 할수 있다.
    //  #define ADC_REG (*(ADC_CONFIG*)(0xBB000000))
    //    ADC_REG.CNFG2 = 0x1A;


    #define ADC_REG (*(ADC_CONFIG*)(&adc1))
    ADC_REG.CNFG2 = 0x1A;


    mem_inspection((unsigned char*)p, 4);


    return 0;
}


