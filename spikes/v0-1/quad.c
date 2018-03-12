#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<math.h>

typedef struct Tuple{
  double r1;
  double r2;
} Tuple;





Tuple QuadSolve(double a, double b, double c);
int main(int argc, char *argv[])
{
  Tuple result = QuadSolve(atof(argv[1]), atof(argv[2]), atof(argv[3]));
  return 0;
}

Tuple QuadSolve(double a, double b, double c){
  double d = (b*b) - (double)(4.0 * (a*c));
  double s = sqrt(d);
  double r1 = (-b + s) / (double)(2.0*a);
  double r2 = (-b - s) / (double)(2.0*a);
  printf("%.7e\t%.7e\n", r1, r2);
  Tuple result = { r1, r2 };
  return result;
} 

