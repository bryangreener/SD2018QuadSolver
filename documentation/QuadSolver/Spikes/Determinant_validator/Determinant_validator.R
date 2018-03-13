Determinant_validator <- function(x) {
  
  # User-prompt for input: values 'a', 'b', and 'c'
  
  a <- readline("what is the value of 'a'? ")
  
  b <- readline("what is the value of 'b'? ")
  
  c <- readline("what is the value of 'c'? ")
  
  # Conversion from character to numeric (IEEEfp double precision and integer format is implemented currently)
  
  a_convert <- as.numeric(a)
  
  b_convert <- as.numeric(b)
  
  c_convert <- as.numeric(c)
  
  ############################# Checking for real numbers ##############################################
  
  # Flags for incorrect input (specifically missing values, character values, and Inf values provided)
  # Note: 'a', 'b', and 'c' are evaluated individually
  # - if non-numeric or Inf values are present, an error message is returned to user, 
  #    along with the value that was converted to NA
  # - NaN's are caught at this step, will return the error message if inputted
  
  if (is.na(a_convert) || is.infinite(a_convert)) {
    
    values <- c(a, b, c)
    
    output <- list(Flag = 1,
                   Message = "Error: Non-numeric or infinite values have been detected.",
                   Input = values)
    
    return(output)
    
  } 
  
  else if (is.na(b_convert) || is.infinite(b_convert)) {
    
    values <- c(a, b, c)
    
    output <- list(Flag = 1,
                   Message = "Error: Non-numeric or infinite values have been detected.",
                   Input = values)
    
    return(output)
  }
  
  else if (is.na(c_convert) || is.infinite(c_convert)) {
    
    values <- c(a, b, c)
    
    output <- list(Flag = 1,
                   Message = "Error: Non-numeric or infinite values have been detected.",
                   Input = values)
    
    return(output)
  }
  
  ###########################################################################################
  
  # Checking if c(a, b, c) = 0
  # - if a = 0 is TRUE, a message is returned indicating a cannot equal zero
  # - if a = 0 is FALSE, a message is returned indicating input meets criteria, along with input values
  
  if (a_convert != 0 && b_convert != 0 && c_convert != 0) {
    
    det_val <- (b_convert * b_convert) - (4 * a_convert * c_convert)
    
    output <- list(Flag = 0,
                   Message = "a, b, and c do not equal zero.", 
                   Determinant = det_val)
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
  