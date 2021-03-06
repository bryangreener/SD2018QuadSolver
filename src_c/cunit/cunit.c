#include<cunit.h>

void cunit(void){
  
  printf( "=============\n"
          "RUNNING TESTS\n"
          "=============\n");
  printf("Test #1: Discriminant of 1x^2 + 1x + 1 = 0\n");
  double d = disc(1.0,1.0,1.0);
  if(isnan(d)){ pass(1); }
  else{ fail(1); }
 
  printf("Test #2: Discriminant of 1x^2 + 2x + 1 = 0\n");
  assertEqual(disc(1.0,2.0,1.0), 0, 2);
  
  printf("Test #3: Discriminant of 2x^2 + 1x + 1 = 0\n");
  d = disc(2.0,1.0,1.0);
  if(isnan(d)){ pass(3); }
  else{ fail(3); }

  printf("Test #4: Discriminant of 1x^2 + 1x + 2 = 0\n");
  d = disc(1.0, 1.0, 2.0);
  if(isnan(d)){ pass(4); }
  else { fail(4); }

  printf("Test #5: Discriminant of 1x^2 + 4x + 2 = 0\n");
  assertEqual(disc(1.0,4.0,2.0), 2.82842712, 5);

  printf("Test #6: Roots of 1x^2 + 1x + 1 = 0\n");
  Tuple result = qsolve(1, 1, 1);
  if(isnan(result.r1) && isnan(result.r2)){ pass(6); }
  else{ fail(6); }

  printf("Test #7: Roots of 1x^2 + 1x + 0 = 0\n");
  result = qsolve(1, 1, 0);
  assertEqual(result.r1, 0.0, 7); 
  assertEqual(result.r2, -1.0, 7);

  printf("Test #8: Roots of 1x^2 + 2x + 1 = 0\n");
  result = qsolve(1,2,1);
  assertEqual(result.r1, -1, 8);
  assertEqual(result.r2, -1, 8);

}
