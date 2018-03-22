#include "main.h"
int main(int argc, char *argv[]){
  char *input;
  //Print menu
  while(1){
    mainMenu();
  
    //MENU SELECTION VALIDATION
    input = rline();
    int choice = vmenu(input);
    while(choice != 1 && choice != 2){
      inputError();
      input = rline();
      choice = vmenu(input);
    }
    if(choice == 2){ exit(0); }

    //QUAD INPUT HANDLING
    printQF();
    double a, b, c;
    int vresult;
    do{
      entryHeader(1);
      input = rline();
      vresult = vdouble(input);
      if(vresult == 1){ a = atof(input); }
    }while(vresult != 1 && a == 0);
    do{
      entryHeader(2);
      input = rline();
      vresult = vdouble(input);
      if(vresult == 1){ b = atof(input); }
    }while(vresult != 1);
    do{
      entryHeader(3);
      input = rline();
      vresult = vdouble(input);
      if(vresult == 1){ c = atof(input); }
    }while(vresult != 1);

    //QUAD MATH HANDLING
    Tuple qresult = qsolve(a,b,c);
    printResult(qresult.r1, qresult.r2);
  }
}

