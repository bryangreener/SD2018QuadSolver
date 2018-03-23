FOLDER CONTENTS
===============

main.r 

 - This file serves as a controller for the other components to the quadsolver. This function
   initially sources in the code for the other functions. First rLiner() is executed in order 
   to prompt the user for input. Input is stored in the "values" object. Next the values are
   imported into the rNumber_Validator() function for validation. Output from this function is
   stored in the "output" object. If any flags (other than 0) are thrown main.r will detect this
   and halt any further operations. Instead any error found is printed for the user to see, and 
   such output is written to the fOutput directory. If the input passes all checks then the 
   "output" object is imported into the qSolver object. main.r stores output from qSolver in 
   the "solution" object. Output from the qSolver is printed and stored in the fOutput directory. 