#include <stdio.h>

int hmobis_tc275_adc_8bit_v1(char a, int b) {
    printf("hmobis_tc275_adc_8bit_v1() called, argument %d, %d\n", a, b);
}

int hmobis_tc275_adc_8bit_v2(char a, int b) {
    printf("hmobis_tc275_adc_8bit_v2() called, argument %d, %d\n", a, b);
}

int hmobis_tc275_adc_16bit_v2(char a, int b) {
    printf("hmobis_tc275_adc_16bit_v2() called, argument %d, %d\n", a, b);
}

int hmobis_tc275_adc_init(int a) {
    printf("hmobis_tc275_adc_init() called, argument %d\n", a);
}

int main() {
    int s1 = hmobis_tc275_adc_8bit_v1(7,10);
    //if(hmobis_tc275_adc_8bit_v1) 
    //~~~~
    // hmobis_tc275_adc_8bit_v1()...

    // 소스코드가 여기저기에 target dependent 코드(함수)가 scattering 됨
    // 향후에 다른 회사 제품의 다른 mcu를 사용하는 경우 모두 고쳐야함.
//  int* p                           = &a
//  int(*함수포인터)
    int (*HHAL_ADC_DATA)(char,int) = hmobis_tc275_adc_8bit_v1;
    int (*HHAL_ADC_INIT)(int)      = hmobis_tc275_adc_init; 


//아래 2개 함수의 호출은 동일한 효과를 보임
//hmobis_tc275_adc_8bit_v1();
//HHAL_ADC_DATA();

void init_HAL() {
    //HHAL_ADC_DATA = hmobis_tc275_adc_8bit_v1;//함수를 가리키는 함수의 시작 주소 int*로 표기할 수 없음. 함수를 변수에 담아서 주소로 가리켜야함.
    HHAL_ADC_INIT = hmobis_tc275_adc_init; 
    //HHAL_ADC_DATA = hmobis_tc275_adc_8bit_v2;
    HHAL_ADC_INIT = hmobis_tc275_adc_8bit_v1;
    //HHAL_ADC_INIT = hmobis_tc375_adc_16bit_v1;
    //HHAL_ADC_INIT = hautoever_freescale_adc;


//함수 포인터 기반, 함수 다변화
    init_HAL(); //내가 원하는 함수를 plugin
    HHAL_ADC_INIT(14);
    int s2 = HHAL_ADC_DATA(8,13);

//온도센서 ISR에 들어갈 코드
    int temp = 45;
    if(temp > 40 ){
        HHAL_ADC_DATA = hmobis_tc275_adc_16bit_v2;
    }else{
        HHAL_ADC_DATA = hmobis_tc275_adc_8bit_v2;
    }
   
    s2 = HHAL_ADC_DATA(8,13);
}
    return 0;
    

}
