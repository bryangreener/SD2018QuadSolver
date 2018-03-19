// Copyright © 2018, Bryan Greener (https://github.com/bryangreener).
#include "rline.h"
char* rline(void){
  char *input = malloc(21);
  if(fgets(input,20,stdin) == NULL){
    return NULL;
  }
  else{ return input; }
}
