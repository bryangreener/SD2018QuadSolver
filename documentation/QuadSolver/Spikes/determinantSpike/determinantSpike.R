################### Checks for complex, double, and real solutions ##################

determinantCheck <- function(a, b, c) {
  
  # Formula for equation's determinant
  
  det_val <- (b*b) - (4*a*c)
  
  # Checking if the equation's determinant is greater than zero
  # - if TRUE, equation's solutions are returned
  # - if FALSE, a message is returned indicating determinant is less than zero
  
  if(det_val > 0) {
    
    output <- paste0("Determinant is greater than zero: ", det_val)
    
    return(output)
  }
  
  # Checking if equation's determinant equals zero
  # - if TRUE, a warning message is returned, along with the equation's solution
  # - if FALSE, the equation's solutions are returned
  
  else if(identical(det_val, 0)) {
    
    message <- paste("Warning: double solution is present (i.e. determinant equals zero).")
    
    output <- list(Message = message,  Determinant = det_val)
    
    return(output)
    
  }
  
  else {
    message <- paste("Error: determinant is less than zero, there are no real solutions for equation.")
    
    det_val <- paste0("The equation's determinant is: ", det_val, sep = "")
  
    output <- list(Message = message, Determinant = det_val)
    
    return(output)
    
  }
  
  return(output)
}

#### Tests for a = 0, complex, double, and real solutions

# Complex 
# 2x^2 + 4x +6

# Double 
# x^2 -2x +1

# Real 
# x^2 -3x +2