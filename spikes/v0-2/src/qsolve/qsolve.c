// Copyright © 2018, Bryan Greener (https://github.com/bryangreener).
#include "qsolve.h"
Tuple qsolve(double a, double b, double c){
  Tuple result = {
    ((double)(-b + disc(a, b, c)) / (double)(2.0 * a)),
    ((double)(-b - disc(a, b, c)) / (double)(2.0 * a)) };
  return result;
}

