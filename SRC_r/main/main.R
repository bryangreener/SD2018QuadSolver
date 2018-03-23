
############################# main: controller ##############################################

#### Author: Paul R Phillips

#### Description: main acts as the controller for the other components of the qsolver. This 
#                 file first sources the code for the other components. Initially rLiner is 
#                 called for user input. Next main will import values object from rLiner  
#                 into the rNumber_Validator function. Conditional statements are put in place
#                 for main to halt if any flag other than 0 is returned. Any errors found in 
#                 rNumber_Validator will be printed via main. If input passes here with Flag
#                 0 then the output object will be imported into the qSolver. Here the 
#                 equation's zeros will be calculated if no additional flags are thrown. 

#### Sourcing other components

source("C:/Users/paulp/Desktop/DataScience/WMU/CS4900/JKK_Consultant/QuadSolver/SRC_r/rLine/rLiner.r")
source("C:/Users/paulp/Desktop/DataScience/WMU/CS4900/JKK_Consultant/QuadSolver/SRC_r/rNumber_Validator/rNumber_Validator.r")
source("C:/Users/paulp/Desktop/DataScience/WMU/CS4900/JKK_Consultant/QuadSolver/SRC_r/qSolve/qSolver.r")
source("C:/Users/paulp/Desktop/DataScience/WMU/CS4900/JKK_Consultant/QuadSolver/SRC_r/wLine/wLiner.r")

#### Prompt user for input; input is stored in values object
values <- rLiner()

#### Import values into rNumber_Validator for validation
output <- rNumber_Validator(values)

#### Check for invalid input detected in rNumber_Validator()

if (output$Flag > 0) {
  
  print(output)
  
  wLiner(output)
  
} else {
  
  # Importing output from rNumber_Validator if all checks pass
  
  solution <- qSolver(output)
  
  # Displays solution to equation
  
  print(solution)
  
  # Writes output to a separate file (fOutput.txt)
  
  wLiner(solution)
  
}

