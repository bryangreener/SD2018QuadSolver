FOLDER CONTENTS
===============
bin
  This folder only ever has one file in it. This is where the "quadsolver"
  executable is saved and can be ran from.

build
  This folder is where all object files are saved into their appropriate
  subfolders. These are used while linking in order to build the executable.

cunit
  Folder with all subfolders and files containing CUNIT testing files
  and headers.

include
  This folder contains only header files all in the top level directory.
  These headers are used by files in src

src
  This folder has subfolders split by functions that each part of the program
  performs. Contains the source files for the program.

README.txt
  You're reading this.

makefile
  This file compiles all .c files in the src directory, saves object files to
  the build folder, then links these files in order to generate an executable
  file in the bin folder.

HOW TO COMPILE
==============
While in the root folder (folder that this README is currently in), type
"make" to run the makefile and build the program in bin.

HOW TO CLEAN
============
While in the root folder (folder that this README is currently in), type
"make clean" in order to remove all generated object files and the executable.

DIRECTORY DESIGN STANDARDS
==========================
The project is to be split into four main folders: src, build, bin, include
These folders are to be populated with appropriate files. 

  1)  src should contain only source code files (*.c) split into appropriate 
      folders based on the function of the files inside.
 
  2)  build should contain only object files (*.o) that are generated by the
      makefile in the root directory. These files are used by the linker
      to generate an executable.

  3)  bin should contain only the executable generated by the makefile.

  4)  include should contain only the header files (*.h) that are used
      by the source files in src. These are to be all at the root level of
      the include folder and not split into separate folders.


PROGRAMMING STANDARDS
=====================
All files writtin in the C laguage in this or any subfolders will follow
the following programming standards:

  1)  Variable, class, function, and parameter names are written in Camel Case.
  
  2)  When declaring classes, functions, etc., the opening braces are 
      written on the same line as the declaration and the closeing braces
      are written on their own line at the end of the code block. Braces
      are required for all methods, functions, and classes.
  
  3)  Statements and declarations that can be written on one line in less than 
      80 characters should be written on one line. This includes IF, ELSE IF,
      ELSE, function calls, returns, etc.
  
  4)  When passing parameters in to a function, add appropriate spacing
      between parameters to improve readability. This same rule applies to
      any statement that uses parenthesis, braces, or brackets.
  
  5)  Pointers are denoted with the * or & in front of and attached to the
      variable being used.
  
  6)  All variable, function, method, etc. names must be descriptive,
      brief, and relevant to their use in the program.
  
  7)  Global variables are to be avoided unless absolutely necessary.
  
  8)  Any code that is in a method, function, or any other statement must be
      tabbed (2 space tab) once to the right from the statement in question.
  
  9)  Add one blank line between methods, functions, and classes.
  
  10) Classes are to be in separate .c files.

  11) Code files must not be wider than 80 characters in width.

  12) Print statements should have output text lined up to reflect how
      it will output at runtime given it does not break the 80 character
      width rule.

  13) All methods, functions, and classes MUST be commented with descriptors
      for its purpose, parameters, returns, and any other pertinant info.
      Do not comment trivial code blocks, only comment when the code may be
      misconstrued or confusing.
      Single line comments should be inline with the code they describe as long
      as they do not break the 80 character rule. If they do, then add the
      comment above the line of code in question.


Copyright © 2018, Bryan Greener (https://github.com/bryangreener).
