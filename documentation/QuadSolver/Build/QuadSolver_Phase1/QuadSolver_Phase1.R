QuadSolver_Phase1 <- function(x) {
  
  # User-prompt for input: values 'a', 'b', and 'c'
  
  a <- readline("what is the value of 'a'? ")
  
  b <- readline("what is the value of 'b'? ")
  
  c <- readline("what is the value of 'c'? ")
  
  # Conversion from character to numeric (IEEEfp double precision and integer format is implemented currently)
  
  a_convert <- as.numeric(a)
  
  b_convert <- as.numeric(b)
  
  c_convert <- as.numeric(c)
  
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
  
  # Checking for input that is out of floating point range
  
  if (a_convert < 2^-126 || a_convert > ((2-2^-23) * 2^127)) {
    
    values <- c(a, b, c)
    
    output <- list(Flag = 2,
                   Message = "Error: Value is not within floating point range.",
                   Input = values)
    
    return(output)
  }
  
  else if (b_convert < 2^-126 || b_convert > ((2-2^-23) * 2^127)) {
    
    values <- c(a, b, c)
    
    output <- output <- list(Flag = 2,
                             Message = "Error: Value is not within floating point range.",
                             Input = values)
    
    return(output)
  }
  
  else if (c_convert < 2^-126 || c_convert > ((2-2^-23) * 2^127)) {
    
    values <- c(a, b, c)
    
    output <- output <- list(Flag = 2,
                             Message = "Error: Value is not within floating point range.",
                             Input = values)
    
    return(output)
  }
  
  # Checking if a = 0
  # - if a = 0 is TRUE, a message is returned indicating a cannot equal zero
  # - if a = 0 is FALSE, a message is returned indicating input meets criteria, along with input values
  
  if (a_convert != 0) {
    
    det_val <- (b_convert * b_convert) - (4 * a_convert * c_convert)
    
  }
  
  else {
    
    values <- c(a, b, c)
    
    output <- list(Flag = 3,
                   Message = "Error: Value 'a' cannot equal zero.",
                   Input = values)
    
    return(output)
  }
  
  # Checking if the equation's determinant is greater than zero
  # - if TRUE, equation's solutions are returned
  # - if FALSE, a message is returned indicating determinant is less than zero
  
  if (det_val > 0) {
    
    x1 <- (-b_convert + sqrt(det_val))/ (2 * a_convert)
    
    x2 <- (-b_convert - sqrt(det_val))/ (2 * a_convert)
    
    output <- c(x1, x2)
    
  }
  
  # Checking if equation's determinant equals zero
  # - if TRUE, a warning message is returned, along with the equation's solution
  # - if FALSE, the equation's solutions are returned
  
  else if (identical(det_val, 0)) {
    
    x <- (-b_convert + sqrt(det_val))/(2 * a_convert)
    
    values <- c(a_convert, b_convert, c_convert)
    
    output <- list(Flag = 4,
                   Message = "Warning: double solution is present (i.e. determinant equals zero).",
                   Input = values,
                   Solution = x)
    
    return(output)
    
  }
  
  else {
    
    values <- c(a_convert, b_convert, c_convert)
    
    output <- list(Flag = 5,
                   Message = "Error: determinant is less than zero, there are no real solutions for equation.",
                   Input = values,
                   Determinant = det_val)
    
    return(output)
    
  }
  
  return(output)
  
} 
 