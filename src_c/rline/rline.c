// Copyright © 2018, Bryan Greener (https://github.com/bryangreener).
#include "rline.h"
char* rline(void){
  // LOGGING START
  writeLog("rline", 0);
  lr(NULL);

  char *input = malloc(21);
  if(fgets(input,20,stdin) == NULL){

    // LOGGING END
    writeLog("rline", 0);
    lr(NULL);

    return NULL;
  }
  else{ 
    // LOGGING END
    writeLog("rline", 1);
    lr(input);

    return input; }
}
