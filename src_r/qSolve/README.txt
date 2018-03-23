FOLDER CONTENT
==============

 - qSolver
   qSolver imports output object from the rNumber_Validator function if Flag = 0. 
   qSolver first dissects the output object since it's in the list format. 
   This function first checks if the determinant is less than zero in order to 
   make sure that the equation used will produce real solutions. The function then 
   checks to see if the determinant equals zero (which indicates the equation will 
   have a double solution). This condition does not print an error, but will return
   a warning message to the user that the equation inputted produces a double 
   solution. If the input passes these conditions then the solutions to the equation
   are solved. Solutions are stored in the "output" object.

   Flags and Printed Messages

   Flag		Message
   0		<none>
   5		"Warning: double solution is present (i.e. determinant equals zero)."
   6		"Error: determinant is less than zero, there are no real solutions for equation."