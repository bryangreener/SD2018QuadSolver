// Copyright © 2018, Bryan Greener (https://github.com/bryangreener).
#include "vmenu.h"
// Method that takes in string input and validates that it is an integer then
// returns the validated int.
// Takes in char * string
// Returns integer.
int vmenu(char *choice){
  // LOGGING START
  writeLog("vmenu", 0);
  lvm(choice, -1);

  int r = atoi(choice);

  // LOGGING END
  writeLog("vmenu", 1);
  lvm(choice, r);
  return r;
}
