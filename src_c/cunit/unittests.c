#include<unittests.h>

int assertEqual(double a, double b){
  double precision = 0.00000001;
  if(((double)(a - precision) < b) && ((double)(a + precision) > b)){
    return 1; 
    }
    else{ return 0;}
}
int assertNEqual(double a, double b){
  if(a == b){ return 0; }
  else { return 1; }
}
void pass(int tnum){
  printf("Test #%i PASS\n", tnum);
}
void fail(int tnum){
  printf("Test #%i FAIL\n", tnum);
}
