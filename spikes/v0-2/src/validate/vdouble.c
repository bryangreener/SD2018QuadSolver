#include "vdouble.h"
int vdouble(char *input){
  if(input == NULL){ return 0; }
  double result = atof(input);
  if(result == 0.0 && strcmp(input, "0.0")){ return 0; }
  return 1;  
}

