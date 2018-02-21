#include<check.h>
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<math.h>
START_TEST (test_QuadSolve_func){
  fail_unless(QuadSolve(1,2,1) == {-1,-1}, "quadsolve real single fail");
  fail_unless(QuadSolve(2,-3,2) == nan "quadsolve complex fail");

}
END_TEST
