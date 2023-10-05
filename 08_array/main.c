#include <stdio.h>

void mem_inspection(unsigned char* p, int s) {
    for(int i=0; i<s; i++) {
      printf("m[0x%p]: 0x%02X\n", p+i, *(p+i));
    }
}


int main() {

   int arr[4] = {0, 1, 2, 0x12345678};
   
   printf("array arr's first element: arr[0] is 0x%08X at 0x%p\n", arr[0], &arr[0]);
   printf("array arr's secnd element: arr[1] is 0x%08X at 0x%p\n", arr[1], &arr[1]);

    printf("arr[2] is 0x%08X @ 0x%p\n", arr[2], &arr[2]);
    printf("arr[2] is 0x%08X @ 0x%p\n", *(&arr[2]), &arr[2]);
    printf("arr[2] is 0x%08X @ 0x%p\n", arr[2], arr+2);
    printf("arr[2] is 0x%08X @ 0x%p\n", *(arr+2), arr+2);
    

    printf("array access by index----------------\n");
    for(int i=0; i<4; i++) {
        printf("arr[%d] is 0x%08X @ 0x%p\n", i, arr[i], &arr[i]);
    }


    printf("array access by pointer----------------\n");
    for(int i=0; i<4; i++) {
        printf("arr[%d] is 0x%08X @ 0x%p\n", i, *(arr+i), arr+i);
    }
    
    
//memory inspection per bytes

printf("memory inspection\n");
mem_inspection((unsigned char*)arr, 16);

//2차원 배열
int m[3][4] = {
   {1,2,3,4},
   {5,6,7,8,},
   {3,5,8,1} 
};


printf("m[0][j].....j=0~3....\n");
for(int j=0; j<4; j++)
    printf("%d ",m[0][j]);

printf("\n");
printf("m[1][j].....j=0~3....\n");
for(int j=0; j<4; j++)
    printf("%d ",m[1][j]);

printf("\n");
printf("m[i]][0].....j=0~3....\n");
for(int i=0; i<3; i++)
    printf("%d\n",m[i][0]);


printf("\n");
printf("m[i]][j]  \n");
for(int i=0; i<3; i++){
    for(int j=0; j<4; j++){

    printf("%d",m[i][j]);
    }
    printf("\n");
}


//int* p = (int*)&m[0][0]; //2차원 배열의 첫번째 방의 주소
int* p = (int*)m; //2차원 배열의 첫번째 방의 주소 (배열 이름)


printf("\n");
printf("m[i]][j]  \n");
for(int i=0; i<3; i++){
    for(int j=0; j<4; j++){

    printf("%d",*(p + i*4 + j));
    }
    printf("\n");
}


/*
아래처럼 3차원 배열로 관리 불가능. 1차원 배열로 접근해야하는데 계산 복잡
int m[3][8] = {
   {1,2,3,4},
   {5,6,7,8,1,4,5,3},
   {3,5,8,1,8,9} 
};

어쩔 수 없이 더미 데이터 삽입 -> 데이터 낭비임
int m[3][8] = {
   {1,2,3,4,0,0,0,0},
   {5,6,7,8,1,4,5,3},
   {3,5,8,1,1,8,9,0} 
};
*/

//배열(시작주소)의 배열
//메모리를 적게 쓰는 방법

int x0[4] = {1,2,3,4};
int x1[8] = {5,6,7,8,1,4,3,5};
int x2[6] = {3,5,8,1,1,8};

int* parr1[3] = {x0, x1, x2};
//int* -> 주소가 n(3)개, 각 방에는 주소가 있음
//배열의 크기가 3, 값은 주소고, 주소는 int를 가리킴
printf("x[1][2] : %d \n", *(parr1[1]+2) );


return 0;
}
