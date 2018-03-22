// Copyright © 2018, Bryan Greener (https://github.com/bryangreener).
#include "wout.h"
void mainMenu(void){
  hRule();
  printf("QUADRATIC SOLVER\n");
  hRule();
  printf( "Please Select an Option\n"
          "1) Solve Quadratic Equation\n"
          "2) Exit\n" );
}
void entryHeader(int step){
  switch(step){
    case 1:
      printf("Enter value a: ");
      break;
    case 2:
      printf("Enter value b: ");
      break;
    case 3:
      printf("Enter value c: ");
      break;
  }
}
void hRule(void){
  printf("=====================\n");
}
void inputError(void){
  printf("Invalid Input. Please Enter a Valid Number\n");
}
void printQF(void){
  printf("Quadratic Formula: ax^2 + bx + c\n");
}
void printResult(double r1, double r2){
  hRule();
  printf("QUADRATIC RESULT\n");
  hRule();
  if(isnan(r1) && isnan(r2)){
    printf( "Root 1: Complex Number Result\n"
            "Root 2: Complex Number Result\n");
  }
  else if(isnan(r1)){
    printf( "Root 1: Complex Number Result\n"
            "Root 2: %.7e\n", r2 );
  }
  else if(isnan(r2)){
    printf( "Root 1: %.7e\n"
            "Root 2: Complex Number Result\n", r1 );
  }
  else{
    printf( "Root 1: %.7e\n"
            "Root 2: %.7e\n",
            r1, r2 );
  }
}
