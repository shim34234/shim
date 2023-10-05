#include <stdio.h>
#include <stdlib.h>
#include <time.h>

//#define DEBUG 1

#define VOTING 100000

int main() {
    int hit=0;
    int voting;

    FILE* file_out = fopen("out.txt", "w");
    srand(time(NULL)); // seed setting for random

    for(voting=0; voting<VOTING; voting++) {
        double x, y;
        x = (double)rand()/RAND_MAX;
        y = (double)rand()/RAND_MAX;
        double radius = x*x + y*y;

        if(radius <= 1) {
            hit++;
#ifdef DEBUG
             printf(          "%f\t%f\t%d\n", x, y, 1);
#endif
            fprintf(file_out, "%f\t%f\t%d\n", x, y, 1);
        } else {
#ifdef DEBUG
             printf(          "%f\t%f\t%d\n", x, y, 0); 
#endif
            fprintf(file_out, "%f\t%f\t%d\n", x, y, 0);           
        }
    }
    
    double hit_rate = (double)hit/voting;
    printf("area is %f\n", hit_rate);
    printf("... is %f\n", hit_rate*4);

    return 0;
}