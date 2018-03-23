#include "main.h"
int main(int argc, char *argv[]){
  char *input;
  FILE *fp = fopen("clog.txt", "ab+");
  fclose(fp);

  // LOGGING START
  writeLog("main", 0);
  lm(argc, argv);

  //Print menu
  while(1){
    mainMenu();
  
    //MENU SELECTION VALIDATION
    input = rline();
    int choice = vmenu(input);
    while(choice != 1 && choice != 2 && choice != 3){
      inputError();
      input = rline();
      choice = vmenu(input);
    }
    if(choice == 3){ 
      // LOGGING END
      writeLog("main", 1);
      lm(argc, argv);

      exit(0); 
    }
    else if(choice == 2){ cunit(); }
    else{
      //QUAD INPUT HANDLING
      printQF();
      double a, b, c;
      int vresult;
      do{
        entryHeader(1);
        input = rline();
        vresult = vdouble(input);
        if(vresult == 1){ a = atof(input); }
        if(a == 0){ printf("a cannot equal 0\n"); }
      }while(vresult != 1 ||  a == 0);
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
}

