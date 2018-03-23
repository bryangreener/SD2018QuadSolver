// Copyright © 2018, Bryan Greener (https://github.com/bryangreener).
#include "qsolve.h"
Tuple qsolve(double a, double b, double c){
  // LOGGING START
  writeLog("qsolve", 0);
  Tuple t = {0,0};
  lq(a, b, c, 0, t);


  double d = disc(a,b,c);
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
    Tuple result = {0.0/0.0, 0.0/0.0};
    
    // LOGGING END
    writeLog("qsolve", 1);
    lq(a, b, c, d, result);
    return result;
  }
}

