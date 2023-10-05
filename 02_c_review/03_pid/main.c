#include <stdio.h>
#include <stdlib.h>

#define PARAM2 1

#ifdef PARAM1
    #define Kp 0.1
    #define Ki 0.001
    #define Kd 0.01
#endif
#ifdef PARAM2
    #define Kp 0.1
    #define Ki 0.5
    #define Kd 0.01
#endif
#ifdef PARAM3
    #define Kp 0.5
    #define Ki 0.05
    #define Kd 0.01
#endif
#ifdef PARAM4
    #define Kp 0.1
    #define Ki 0.1
    #define Kd 0.1
#endif


#define MAX_TIMESTAMP 100.0
#define SIM_TIME 10.0
#define delta (double)(SIM_TIME/MAX_TIMESTAMP)

#define MAX 100
#define MIN -100

#define SET_POINT 20.0


// plant model
// : integrator (such as capacitor)
double plant(double drive) {
    static double voltage = 0;
    voltage += drive;
    return voltage;
}

// sensor model
// : no amplication
double sensor(double input) {
    return input;
}

// comparator model
double compare(double in1, double in2) {
    return in1 - in2;
}

// proportional model
double p_control(double err) {
    return Kp*err;
}
// integrator model
double i_control(double err) {
    static double integral=0;
    integral += err * delta;
    return Ki * integral;
}
// derivative model
double d_control(double err) {
    double derivative=0.0;
    static double pre_error=0.0;
    derivative = (double)((err - pre_error) / delta);
#ifdef DEBUG
    printf("d: %.2f, %.2f, %.2f, %.2f\n", derivative, err, pre_error, delta);
#endif
    // save previous error (trace memory)
    pre_error = err;
    return Kd * derivative;
}

// total PID control
double pid_control(double p, double i, double d) {
    double next_drive = p+i+d;

    // Restrict to max/min
    if( next_drive > MAX )
        next_drive = MAX;
    if( next_drive < MIN )
        next_drive = MIN;

    return next_drive;

}


int main(int argc, char* argv[]) {
	
	int stamp;
    double next_drive = 0;
    double output = 0;
    double sensed_output = 0;
    double error = 0;

    double p_drive, i_drive, d_drive;
    double integral = 0; 
    double derivative = 0;

    double time=0.0;

	FILE* out = fopen("out.txt", "w");

    for (stamp = 0; stamp < MAX_TIMESTAMP; stamp++) {
        // Calculate error
        error = compare(SET_POINT, sensed_output);

        // Proportional term
        p_drive = p_control(error);

        // Integral term
        i_drive = i_control(error);

        // Derivative term 
        d_drive = d_control(error);

        // Calculate total output
        next_drive = pid_control(p_drive, i_drive, d_drive);
#ifdef DEBUG
        printf("%.2f, %.2f, %.2f, %.2f\n", error, p_drive, i_drive, d_drive);
#endif
        output     = plant(next_drive);

        sensed_output = sensor(output);

		fprintf(out, "%.2f %.2f \n", time, output);
		time += delta;
    }

    fclose(out);
    return 0;
}


