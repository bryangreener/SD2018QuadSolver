FOLDER CONTENTS
===============
All the files in this folder are .h header files that are included in the src
files. These are linked during compilation by the makefile in root.

disc.h
  Header for disc.c that is used to calculate discriminant.
 
main.h
  Header for main.c that includes all other headers needed in the main.c
  file. 

qsolve.h
  Header for qsolve.c that includes all the math headers for calculating
  the roots for given inputs.

rline.h
  Header for rline.c that is used to read user input.

tuple.h
  Header that defines the tuple data type to be used in multiple other
  methods in the main program.

vdouble.h
  Header for vdouble.c that is used to validate user input for the quadratic
  variables.

vmenu.h
  Header for vmenu.c that is used to validate user input for the main menu.

wout.h
  Header for wout.c that is used to write multiple different console outputs
  for the user.

PROGRAMMING STANDARDS
=====================
Please refer to README.txt in the root folder for this program for general
programming standards. Below are specific standards for .h header files:

  1)  When necessary, wrap header file code in #ifndef in order to prevent
      duplicate header generation.
  
  2)  Add all #include libraries that the .c file will need to the header.
  
  3)  Define all functions in a single line so long as they all fit the 80
      character rule.

  4)  Define any abstract data type in a header file of its own.
