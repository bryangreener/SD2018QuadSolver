// Copyright © 2018, Bryan Greener (https://github.com/bryangreener).
#include "wout.h"
// None of the functions in this class return anything.

// Method that prints main menu.
void mainMenu(void){
  hRule();
  printf("QUADRATIC SOLVER\n");
  hRule();
  printf( "Please Select an Option\n"
          "1) Solve Quadratic Equation\n"
          "2) Run Tests\n"
          "3) Exit\n" );
}
// Method that takes in int input then prints appropriate
// prompt based on the input.
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
// Simple method for printing a horizontal rule.
void hRule(void){
  printf("=====================\n");
}
// Method that prints that an input is invalid.
void inputError(void){
  printf("Invalid Input. Please Enter a Valid Number\n");
}
// Method that prints the quadratic formula.
void printQF(void){
  printf("Quadratic Formula: ax^2 + bx + c = 0 where a != 0\n");
}
// Method thta prints quadratic roots.
// Takes in two doubles cooresponding to the resulting roots.
// Checks for NaN results and outputs accordingly in scientific notation.
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
// Method that prints the log header which includes the passed in
// function name, whether or not it is entering or exiting the function,
// and a timestamp. This is called every time a function is entered or exited.
// It opens the clog.txt file for appending then closes it when finished.
// All following functions also open and close this same file for appending.
void writeLog(char *func, int op){
  FILE *fp = fopen("clog.txt", "a");
  char *el = malloc(6);
  if(op == 0){ el = strdup("ENTER"); }
  else{ el = strdup("LEAVE"); }
  time_t ltime = time(NULL);
  fprintf(fp, "==NEW LOG ENTRY: %s"
              "  %s %s\n"
              "  Locals:\n", 
              asctime(localtime(&ltime)), el, func);
  fclose(fp);
}
// Fuction for logging the main method.
// Takes in the argc and argv inputs from main() and prints them out.
void lm(int argc, char *argv[]){
  FILE *fp = fopen("clog.txt", "a");
  fprintf(fp, "    argc:   %i\n"
              "    argv:   %s\n",
              argc, *argv);
  fclose(fp);
}
// Function for logging the disc method.
// Takes in doubles a, b, c, and d cooresponding to the quadratic
// variables and the discriminant result. Prints these values out.
void ld(double a, double b, double c, double d){
  FILE *fp = fopen("clog.txt", "a");
  fprintf(fp, "    a:      %.7e\n"
              "    b:      %.7e\n"
              "    c:      %.7e\n"
              "    d:      %.7e\n",
              a, b, c, d);
  fclose(fp);
}
// Function for logging qsolve method.
// Takes in doubles a, b, c, and d, and the result tuple which
// contains the resulting roots from qsolve.
// Prints these values out.
void lq(double a, double b, double c, double d, Tuple result){
  FILE *fp = fopen("clog.txt", "a");
  fprintf(fp, "    a:      %.7e\n"
              "    b:      %.7e\n"
              "    c:      %.7e\n"
              "    d:      %.7e\n"
              "    r1:     %.7e\n"
              "    r2:     %.7e\n",
              a, b, c, d, result.r1, result.r2); 
  fclose(fp);
}
// Function for logging the vdouble method.
// Takes in the string input, double result, and int r (return value)
// and prints them out.
void lvd(char *input, double result, int r){
  FILE *fp = fopen("clog.txt", "a");
  fprintf(fp, "    input:  %s\n"
              "    result: %.7e\n"
              "    r:      %i\n",
              input, result, r);
  fclose(fp);
}
// Function for loggin the vmenu method.
// Takes in the string input and the return int c and prints them out.
void lvm(char *choice, int c){
  FILE *fp = fopen("clog.txt", "a");
  fprintf(fp, "    choice: %s\n"
              "    c:      %i\n",
              choice, c);
  fclose(fp);
}
// Function for logging the rline method.
// Takes in the string input and prints it out.
void lr(char *input){
  FILE *fp = fopen("clog.txt", "a");
  fprintf(fp, "    input:  %s\n", input);
  fclose(fp);
}

