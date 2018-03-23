############### rLiner test #################

# Test validates rLiner's input conversion from string to numeric

# Packages Used:
library(RUnit)

# rLiner's code without user prompt

rNumber_Validator_trial <- function(a,b,c) {
  
  # Check to make sure is a real number
  # - flags NA's, NAN's, and Inf's
  
  if (is.na(a) || is.infinite(a)) {
    
    values <- c(a, b, c)
    
    output <- list(Flag = 1,
                   Message = "Error: Non-numeric or infinite values have been detected.",
                   Input = values)
    
    return(output)
    
  } 
  
  else if (is.na(b) || is.infinite(b)) {
    
    values <- c(a, b, c)
    
    output <- list(Flag = 1,
                   Message = "Error: Non-numeric or infinite values have been detected.",
                   Input = values)
    
    return(output)
  }
  
  else if (is.na(c) || is.infinite(c)) {
    
    values <- c(a, b, c)
    
    output <- list(Flag = 1,
                   Message = "Error: Non-numeric or infinite values have been detected.",
                   Input = values)
    
    return(output)
  }
  
  else {
    
  }
  
  ###############################################################################################
  
  ################ IEEE Floating Point (Single Precision) Validation ####################
  
  #### Positive Overflow and Underflow
  
  if (a > 0.0) {
    
    if(a < 2.0^-149 || a > ((2.0-2.0^-23) * 2.0^127)) {
      values <- c(a, b, c)
      
      output <- list(Flag = 2,
                     Message = "Error: Positive Overflow or Positive Underflow is present in inputted values.",
                     Input = values)
      
      return(output)
      
    }
    
  }
  
  
  #### Negative Overflow and Underflow
  
  else if (a < 0.0) {
    
    if(a < (-(2.0-2.0^-23) * 2.0^127) || a > -2.0^-149) {
      values <- c(a, b, c)
      
      output <- list(Flag = 3,
                     Message = "Error: Negative Overflow or Negative Underflow is present in inputted values.",
                     Input = values)
      
      return(output)
    }
  }
  
  #### Positive Overflow and Underflow
  
  if (b > 0.0) {
    
    if(b < 2.0^-149 || b > ((2.0-2.0^-23) * 2.0^127)) {
      values <- c(a, b, c)
      
      output <- list(Flag = 2,
                     Message = "Error: Positive Overflow or Positive Underflow is present in inputted values.",
                     Input = values)
      
      return(output)
      
    }
    
  }
  
  
  #### Negative Overflow and Underflow
  
  else if (b < 0.0) {
    
    if(b < (-(2.0-2.0^-23) * 2.0^127) || b > -2.0^-149) {
      values <- c(a, b, c)
      
      output <- list(Flag = 3,
                     Message = "Error: Negative Overflow or Negative Underflow is present in inputted values.",
                     Input = values)
      
      return(output)
    }
  }
  
  #### Positive Overflow and Underflow
  
  if (c > 0.0) {
    
    if(c < 2.0^-149 || c > ((2.0-2.0^-23) * 2.0^127)) {
      values <- c(a, b, c)
      
      output <- list(Flag = 2,
                     Message = "Error: Positive Overflow or Positive Underflow is present in inputted values.",
                     Input = values)
      
      return(output)
      
    }
    
  }
  
  
  #### Negative Overflow and Underflow
  
  else if (c < 0.0) {
    
    if(c < (-(2.0-2.0^-23) * 2.0^127) || c > -2.0^-149) {
      values <- c(a, b, c)
      
      output <- list(Flag = 3,
                     Message = "Error: Negative Overflow or Negative Underflow is present in inputted values.",
                     Input = values)
      
      return(output)
    }
    
  }
  
  
  #######################################################################################
  
  ########################### Checking if c(a, b, c) = 0 ################################
  
  # - if a = 0 is TRUE, a message is returned indicating a cannot equal zero
  # - if a = 0 is FALSE, a message is returned indicating input meets criteria, along with input values
  
  if (a != 0.0 && b != 0.0 && c != 0.0) {
    
    det_value <- (b * b) - (4.0 * a * c)
    
    output <- list(Flag = 0,
                   Determinant = det_value,
                   a = a,
                   b = b, 
                   c = c)
    
    return(output)
  }
  
  else {
    
    values <- c(a, b, c)
    
    output <- list(Flag = 4,
                   Message = "Error: Values 'a, b, c' cannot equal zero.",
                   Input = values)
    
    return(output)
  }
  
  return(output)
  
}


test.rNumber_Validator_trial <- function() {
  
  checkEquals(length(rNumber_Validator_trial("4","5","6")), 3)
  checkIdentical(rLiner_trial("4", "5.565", "3.32e10"), list(Flag = 0,
                                                             Determinant = det_value,
                                                             a = a,
                                                             b = b, 
                                                             c = c))

}


