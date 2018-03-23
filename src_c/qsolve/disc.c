// Copyright © 2018, Bryan Greener (https://github.com/bryangreener).
#include "disc.h"
// Method that calculates the discriminant of the quadratic equation.
// Takes in three doubles and returns one double (discriminant).
double disc(double a, double b, double c){
  // LOGGING START
  writeLog("disc", 0);
  ld(a, b, c, 0);
  // Calculate discriminant
  double d = (double)sqrt((double)(b*b) - (double)(4.0 * (double)(a*c)));
  // LOGGING END
  writeLog("disc", 1);
  ld(a, b, c, d);

  return d;
}

