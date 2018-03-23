// Copyright © 2018, Bryan Greener (https://github.com/bryangreener).
#include "vdouble.h"
// Method that takes in string, validates that it is a double,
// and returns an integer specifying that the value can be converted.
// The value is then converted in the calling function.
// Takes in a char* string input.
// Returns integer (acting as bool) with either 0 or 1.
int vdouble(char *input){
  // LOGGING START
  writeLog("vdouble", 0);
  lvd(input, 0, 0);

  if(input == NULL){ 
    // LOGGING END
    writeLog("vdouble", 1);
    lvd(input, 0, 0);
    return 0; 
  }
  double result = atof(input);
  if(result == 0.0 && !strcmp(input, "0.0")){ 
    // LOGGING END
    writeLog("vdouble", 1);
    lvd(input, result, 0);
    return 0; 
  }

  // LOGGING END
  writeLog("vdouble", 1);
  lvd(input, result, 1);
  return 1; 
}

