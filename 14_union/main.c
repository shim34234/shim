#include <stdio.h>

typedef struct{
    unsigned char b0: 1;//1~8까지 가능
    unsigned char b1: 1;
    unsigned char b2: 1;
    unsigned char b3: 1;
    unsigned char b4: 1;
    unsigned char b5: 1;
    unsigned char b6: 1;
    unsigned char b7: 1;
} bits8;

typedef struct{
    //8bit CNFG1
    unsigned char SOC: 1;//1~8까지 가능
    unsigned char CFG: 7;
    //8bit CNFG2
    unsigned char CLK: 4;
    unsigned char SPEED: 4;
    //16bit MODE
    unsigned char RES: 8;
    unsigned short ETC: 8;
} A_LLD;

typedef struct {
    unsigned char CNFG1;
    unsigned char CNFG2;
    unsigned short MODE;
} ADC_CONFIG;


typedef union {
    ADC_CONFIG cnfg;
    unsigned char bytes[4];
    bits8         bits32[4];
    A_LLD         adc_reg;
} H_ADC_REG;

void mem_inspection(unsigned char* p, int s){
    for(int i=0; i<s; i++) {
      printf("m[0x%p]: 0x%02X\n", p+i, *(p+i));
    }
}

int main() {
    ADC_CONFIG adc1 = {0x78, 0x56, 0xF002};
    mem_inspection((unsigned char*)&adc1, 4);

    H_ADC_REG h_adc;
    h_adc.cnfg.CNFG1 = 0x5A;
    h_adc.cnfg.CNFG2 = 0xBF;
    h_adc.cnfg.MODE = 0xDDCC;
    
    
    printf("H_ADC_REG's mem size is %d\n", sizeof(H_ADC_REG));
    printf("H_ADC_REG's CNFG1 is 0x%02X\n", h_adc.cnfg.CNFG1);


// 만약 mode의 상위 8비트를 조작하고 싶다면, mode에 대해 비트 연산 해야함.
//h_adc.cnfg.MODE &= ~(0xFF<<8);
//h_adc.cnfg.MODE |= ~(0xFF<<8);

//다음 처럼 한방에 해결
    h_adc. bytes[3] = 0x34;
    printf("H_ADC_REG's MODE is 0x%04X\n", h_adc.cnfg.MODE);


    h_adc.bits32[3].b7= 1;
    printf("H_ADC_REG's MODE is 0x%04X\n", h_adc.cnfg.MODE);

    
    if(h_adc.bits32[3].b7)
        printf("ADC conversion completed.\n");


    // 칩스펙과 같이 1:1로 대응된 bit slice로 표현
    //
    // 31              24 23            16 15     12 11    8 7       1    0
    // +-----------------+----------------+---------+-------+---------+---+
    // |               MODE               |      CNFG2      |      CNFG1  |
    // +-----------------+----------------+---------+-------+---------+---+
    // |       byte[3]   |     byte[2]    |     byte[1]     |   byte[0]   |
    // +-----------------+----------------+---------+-------+---------+---+ 
    // |    bites32[3]   |  bites32[1]    |   bites32[1]    | bites32[0]  |
    // +-----------------+----------------+---------+-------+---------+---+
    // |       ETC       |       RES      |  SPEED  |  CLK  |  CNG    |SOC|
    // +-----------------+----------------+---------+-------+---------+---+


    printf("A_LLD size is %d\n", sizeof(A_LLD));
    h_adc.bytes[1] = 0x5A;
    printf("ADC'S SPEED is 0x%01X\n", h_adc.adc_reg.SPEED);
    h_adc.adc_reg.CLK = 0xF;
    
    printf("ADC'S CNG2 is 0x%01X\n", h_adc.cnfg.CNFG2);
    return 0;

}