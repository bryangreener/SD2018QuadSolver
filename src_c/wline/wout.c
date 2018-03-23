// Copyright © 2018, Bryan Greener (https://github.com/bryangreener).
#include "wout.h"
void mainMenu(void){
  hRule();
  printf("QUADRATIC SOLVER\n");
  hRule();
  printf( "Please Select an Option\n"
          "1) Solve Quadratic Equation\n"
          "2) Run Tests\n"
          "3) Exit\n" );
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
void lm(int argc, char *argv[]){
  FILE *fp = fopen("clog.txt", "a");
  fprintf(fp, "    argc:   %i\n"
              "    argv:   %s\n",
              argc, *argv);
  fclose(fp);
}
void ld(double a, double b, double c, double d){
  FILE *fp = fopen("clog.txt", "a");
  fprintf(fp, "    a:      %.7e\n"
              "    b:      %.7e\n"
              "    c:      %.7e\n"
              "    d:      %.7e\n",
              a, b, c, d);
  fclose(fp);
}
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
void lvd(char *input, double result, int r){
  FILE *fp = fopen("clog.txt", "a");
  fprintf(fp, "    input:  %s\n"
              "    result: %.7e\n"
              "    r:      %i\n",
              input, result, r);
  fclose(fp);
}
void lvm(char *choice, int c){
  FILE *fp = fopen("clog.txt", "a");
  fprintf(fp, "    choice: %s\n"
              "    c:      %i\n",
              choice, c);
  fclose(fp);
}
void lr(char *input){
  FILE *fp = fopen("clog.txt", "a");
  fprintf(fp, "    input:  %s\n", input);
  fclose(fp);
}

