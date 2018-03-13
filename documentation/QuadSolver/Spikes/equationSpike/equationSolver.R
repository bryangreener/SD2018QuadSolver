############# Spike for simple arithmetic of QuadSolver ##########

# Author: Paul R Phillips

#### When function is called it requires three values to be inputted (this version is without readlines)

QuadSolver <- function(a, b, c) {
  
  # Checking if a = 0
  # - if a = 0 is TRUE, a message is returned indicating a cannot equal zero
  # - if a = 0 is FALSE, the equation's determinant is then calculated
  
  if(a != 0) {
    det_val <- (b*b) - (4*a*c)
  }
  
    else {
      message <- paste0("Error: Value 'a' cannot equal zero")
      
      return(message)
    }
  
  # Checking if the equation's determinant is greater than zero
  # - if TRUE, equation's solutions are returned
  # - if FALSE, a message is returned indicating determinant is less than zero
  
  if(det_val > 0) {
    x1 <- (-b + sqrt(det_val))/(2*a)
    
    x2 <- (-b - sqrt(det_val))/(2*a)
    
    solutions <- c(x1, x2)
  }
  
  # Checking if equation's determinant equals zero
  # - if TRUE, a warning message is returned, along with the equation's solution
  # - if FALSE, the equation's solutions are returned
  
  else if(identical(det_val, 0)) {
    
    x <- (-b + sqrt(det_val))/(2*a)
    
    message <- paste("Warning: double solution is present (i.e. determinant equals zero).")
    
    solution <- paste0("The equation's solution is: ", x, sep = "")
    
    solution <- c(message,  solution)
    
    return(solution)
    
  }
  
  else {
    solutions <- paste("Error: determinant is less than zero, there are no real solutions for equation.")
    
    det_val <- paste0("The equation's determinant is: ", det_val, sep = "")
    
    solutions <- c(solutions, det_val)
    
    return(solutions)
  }
  
  return(solutions)
}

####################################################################################################


####################################### Current Testing Data #############################################

#### Tests for a = 0, complex, double, and real solutions

# Complex 
# 2x^2 + 4x +6

# Double 
# x^2 -2x +1

# Real 
# x^2 -3x +2

# a = 0 (pretty straight forward)
