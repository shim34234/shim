#include <stdio.h>

#define A 0
#define B 100.0
#define N 200

float f(float t) {
    float y;
    y = t*t - 50*t - 4;
    return y;
}

int main() {
    float a = A;
    float b = B;

    float delta = (b-a)/N;

    float y;
    float sum=0;
    FILE* file_out = fopen("out.txt", "w");

    for(float t=a; t<b; t=t+delta) {
        y = f(t);
        sum += y*delta;
         printf(          "%.1f\t%.1f\n", t, y);
        fprintf(file_out, "%.1f\t%.1f\n", t, y);
    }

    printf("sum is %.1f (t=%.1f ~ %.1f)\n", sum, a, b);

    return 0;
}