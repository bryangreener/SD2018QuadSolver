FOLDER CONTENTS
===============

 - rNumber_Validator
   rNumber_Validator imports the "values" object outputted by the rLiner function. The function first separates the 
   values object into three components, which are respectively a, b, and c. This function's purpose is to check
   for NA's, NaN's, +|- Inf's, and any other bad input (which is typically converted to an NA value in R. This 
   function then checks for Positive Overflow and Underflow values. If inputted values passes this check then
   the function checks for Negative Overflow and Underflow values as well. Finally to ensure that values are in
   IEEEfp format the functions checks to make sure values a, b, and c do not equal absolute zero. If inputted values
   pass all tests then the determinant of the standard quadratic equation is calculated and stored as output along
   with the inputted values. 

 - Flags and Printed Messages:

   Flag		Message
   0		<none>
   1 		"Error: Non-numeric or infinite values have been detected."
   2		"Error: Positive Overflow or Positive Underflow is present in inputted values."
   3 		"Error: Negative Overflow or Negative Underflow is present in inputted values."
   4 		"Error: Values 'a, b, c' cannot equal zero."