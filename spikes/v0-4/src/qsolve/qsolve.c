// Copyright © 2018, Bryan Greener (https://github.com/bryangreener).
#include "qsolve.h"
Tuple qsolve(double a, double b, double c){
  double d = disc(a,b,c);
  if(d > 0){
    Tuple result = {
      (double)(-b + d) / (double)(2.0 * a),
      (double)(-b - d) / (double)(2.0 * a) };
    return result;
  }
  else if(d == 0){
    Tuple result = {
      (double)(-b) / (double)(2.0*a),
      (double)(-b) / (double)(2.0*a) };
    return result;
  }
  else{
    Tuple result = {0.0/0.0, 0.0/0.0};
    return result;
  }
}

