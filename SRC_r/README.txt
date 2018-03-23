
FOLDER CONTENTS
===============

The folders in this SRC folder contain all the .r source files for the program that are compiled by Rscript in R's bin folder.


main.r

 - acts as the controller for the other programs, first sources in code for the other files
   runs programs in chronological order and has its own checks to stop the program and return flags
   as well as return messages to the user as needed.

rLiner.r

 - prompts user for input, converts input to numeric values

rNumber_Validator.r

 - inputs values from rLiner.r and checks for NA's, NaN's, and +|- Inf's
   also makes sure the values inputted meet IEEEfp standards
   calculates the determinant of the quadratic equation if all checks are passed

qSolver.r

 - Inputs the list created in rNumber_Validator.r
   qSolver.r makes sure that the determinant value of the equation does not equal zero
   It also sends a warning message to the user is the determinant equals zero (which means the equation
   will have a double zero). This program calculates the zeros (and double zeros) for the quadratic equations inputted.

wLiner.r

 - a simple program that sets the working directory to fOutput (under SRC_r) and creates a .txt file in
   which to store the output in. wLiner.r then writes printed output to user to the file.

fOutput.txt

 - File that stores output. This file will store error messages and flags too.
	