// Copyright © 2018, Bryan Greener (https://github.com/bryangreener).
#include "qsolve.h"
// Mathod that calculates the roots of the quadratic equation.
// Takes in three doubles a, b, and c for the equation.
// Returns a tuple of two roots calculated.
Tuple qsolve(double a, double b, double c){
  // LOGGING START
  writeLog("qsolve", 0);
  Tuple t = {0,0};
  lq(a, b, c, 0, t);

  double d = disc(a,b,c); // Calculate discriminant
  // Handle disc result
  if(d > 0){
    Tuple result = {
      (double)(-b + d) / (double)(2.0 * a),
      (double)(-b - d) / (double)(2.0 * a) };
    // LOGGING END
    writeLog("qsolve", 1);
    lq(a, b, c, d, result);
    return result;
  }
  else if(d == 0){
    Tuple result = {
      (double)(-b) / (double)(2.0*a),
      (double)(-b) / (double)(2.0*a) };
    // LOGGING END
    writeLog("qsolve", 1);
    lq(a, b, c, d, result);
    return result;
  }
  else{
    Tuple result = {0.0/0.0, 0.0/0.0}; // NaN results
    // LOGGING END
    writeLog("qsolve", 1);
    lq(a, b, c, d, result);
    return result;
  }
}

