#include "main.h"
// Main method for the entire program.
// This method handles calling all other functions of the program.
// Logic performed in this method is minimal and it doesn't do any
// math claculations.
// Takes standard IO in.
// No returns.
int main(int argc, char *argv[]){
  char *input;
  FILE *fp = fopen("clog.txt", "ab+"); // open/create log file
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
      // Loop through each input for a, b, and c. a != 0
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

