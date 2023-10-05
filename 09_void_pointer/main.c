#include <stdio.h>

void mem_inspection(unsigned char* p, int s) {
    for(int i=0; i<s; i++) {
      printf("m[0x%p]: 0x%02X\n", p+i, *(p+i));
    }
}

int compare_float(float lhs, float rhs) {
  if(lhs == rhs)
    return 1;
  else
    return 0;
}


int compare(void* p_lhs, void* p_rhs, int type) {
  if(type == 0) // float 변수가 전달될경우
  {
    float lhs = *((float*)p_lhs);
    float rhs = *((float*)p_rhs);


    if(lhs == rhs)
      return 1;
    else
      return 0;
  }
  else if(type == 1) // int 변수가 전달될경우
  {
    int lhs = *((int*)p_lhs);
    int rhs = *((int*)p_rhs);
  }
  else if(type == 2) // int 변수가 전달될경우
  {
    char lhs = *((float*)p_lhs);
    char rhs = *((float*)p_rhs);

//if(메인 함수의 a == 메인 함수의 b)

    if(lhs == rhs)
      return 1;
    else
      return 0;
  }


}


int main() {


  float a = 10.2;
  float b = 10.3;


  if(compare_float(a, b) == 1) {
    printf("float a,b is equal\n");
  } else {
    printf("float a,b is not equal\n");
  }


  int c = 11;
  int d = 12;
  // struct STUDENT {
  //    int m1,
  //    int m2,
  //    int m3,
  //    int m4
  // };
  // struct STUDENT k1 = { 1, 3, 5, 4 };
  // struct STUDENT k2 = { 1, 3, 5, 4 };


  // 변수의 내용 (값) 전체를 복사하게 됨 (에러, 워닝, 그리고 복사비용까지..)
  //if(compare_float(k1, k2) == 1) {
  if(compare_float(c, d) == 1) {
    printf("int c,d is equal\n");
  } else {
    printf("int c,d is not equal\n");
  }


  // 주소를 인자로 넘기면, 복사 비용이 일정 (주소 크기는 4바이트므로)
  // 주요: 주소는 얼마든지 casting이 가능.. 변환해도 여전히 주소값은 같음.. (정보소실없음)
  a = 10.0;
  b = 10.0;
  if(compare(&a, &b, 0) == 1) {
    printf("float a, b is equal\n");
  } else {
    printf("float a, b is not equal\n");
  }


  c = 10;
  d = 10;
  if(compare(&c, &d, 1) == 1) {
    printf("int c, d is equal\n");
  } else {
    printf("int c, d is not equal\n");
  }
             
  return 0;


}
