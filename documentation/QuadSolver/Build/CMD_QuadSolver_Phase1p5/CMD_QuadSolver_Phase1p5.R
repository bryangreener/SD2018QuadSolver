CMD_QuadSolver_Phase1p5 <- function() {
  
  # User-prompt for input: values 'a', 'b', and 'c'
  
  cat("Please enter variables in the format 'a,b,c':")
  
  input1 <- readLines(con = "stdin", 1)
  
  input2 <- strsplit(input1, ",")
  
  Input <- unlist(input2)
  
  #   Conversion of values a, b, and c from character to numeric:
  
  a_convert <- as.numeric(Input[1])
  
  b_convert <- as.numeric(Input[2])
  
  c_convert <- as.numeric(Input[3])
  
  ############################# Checking for real numbers ##############################################
  
  # Flags for incorrect input (specifically missing values, character values, and Inf values provided)
  # Note: 'a', 'b', and 'c' are evaluated individually
  # - if non-numeric or Inf values are present, an error message is returned to user, 
  #    along with the value that was converted to NA
  # - NaN's are caught at this step, will return the error message if inputted
  
  if (is.na(a_convert) || is.infinite(a_convert)) {
    
    values <- c(a_convert, b_convert, c_convert)
    
    output <- list(Flag = 1,
                   Message = "Error: Non-numeric or infinite values have been detected.",
                   Input = values)
    
    return(output)
    
  } 
  
  else if (is.na(b_convert) || is.infinite(b_convert)) {
    
    values <- c(a_convert, b_convert, c_convert)
    
    output <- list(Flag = 1,
                   Message = "Error: Non-numeric or infinite values have been detected.",
                   Input = values)
    
    return(output)
  }
  
  else if (is.na(c_convert) || is.infinite(c_convert)) {
    
    values <- c(a_convert, b_convert, c_convert)
    
    output <- list(Flag = 1,
                   Message = "Error: Non-numeric or infinite values have been detected.",
                   Input = values)
    
    return(output)
  }
  
  ###############################################################################################
  
  ################ IEEE Floating Point (Single Precision) Validation ####################
  
  #### Positive Overflow and Underflow
  
  if (a_convert > 0) {
    
    if(a_convert < 2^-149 || a_convert > ((2-2^-23) * 2^127)) {
      values <- c(a_convert, b_convert, c_convert)
      
      output <- list(Flag = 2,
                     Message = "Error: Positive Overflow or Positive Underflow is present in inputted values.",
                     Input = values)
      
      return(output)
      
    }
    
  }
  
  
  #### Negative Overflow and Underflow
  
  else if (a_convert < 0) {
    
    if(a_convert < (-(2-2^-23) * 2^127) || a_convert > -2^-149) {
      values <- c(a_convert, b_convert, c_convert)
      
      output <- list(Flag = 3,
                     Message = "Error: Negative Overflow or Negative Underflow is present in inputted values.",
                     Input = values)
      
      return(output)
    }
  }
  
  #### Positive Overflow and Underflow
  
  if (b_convert > 0) {
    
    if(b_convert < 2^-149 || b_convert > ((2-2^-23) * 2^127)) {
      values <- c(a_convert, b_convert, c_convert)
      
      output <- list(Flag = 2,
                     Message = "Error: Positive Overflow or Positive Underflow is present in inputted values.",
                     Input = values)
      
      return(output)
      
    }
    
  }
  
  
  #### Negative Overflow and Underflow
  
  else if (b_convert < 0) {
    
    if(b_convert < (-(2-2^-23) * 2^127) || b_convert > -2^-149) {
      values <- c(a_convert, b_convert, c_convert)
      
      output <- list(Flag = 3,
                     Message = "Error: Negative Overflow or Negative Underflow is present in inputted values.",
                     Input = values)
      
      return(output)
    }
  }
  
  #### Positive Overflow and Underflow
  
  if (c_convert > 0) {
    
    if(c_convert < 2^-149 || c_convert > ((2-2^-23) * 2^127)) {
      values <- c(a_convert, b_convert, c_convert)
      
      output <- list(Flag = 2,
                     Message = "Error: Positive Overflow or Positive Underflow is present in inputted values.",
                     Input = values)
      
      return(output)
      
    }
    
  }
  
  
  #### Negative Overflow and Underflow
  
  else if (c_convert < 0) {
    
    if(c_convert < (-(2-2^-23) * 2^127) || c_convert > -2^-149) {
      values <- c(a_convert, b_convert, c_convert)
      
      output <- list(Flag = 3,
                     Message = "Error: Negative Overflow or Negative Underflow is present in inputted values.",
                     Input = values)
      
      return(output)
    }
  }
  
  #######################################################################################
  
  # Checking if c(a, b, c) = 0
  # - if a = 0 is TRUE, a message is returned indicating a cannot equal zero
  # - if a = 0 is FALSE, a message is returned indicating input meets criteria, along with input values
  
  if (a_convert != 0 && b_convert != 0 && c_convert != 0) {
    
    det_val <- (b_convert * b_convert) - (4 * a_convert * c_convert)
    
  }
  
  else {
    
    values <- c(a_convert, b_convert, c_convert)
    
    output <- list(Flag = 4,
                   Message = "Error: Values 'a, b, c' cannot equal zero.",
                   Input = values)
    
    return(output)
  }
  
  # Checking if the equation's determinant is greater than zero
  # - if TRUE, equation's solutions are returned
  # - if FALSE, a message is returned indicating determinant is less than zero
  
  if (det_val > 0) {
    
    x1 <- (-b_convert + sqrt(det_val))/ (2 * a_convert)
    
    x2 <- (-b_convert - sqrt(det_val))/ (2 * a_convert)
    
    values <- c(x1, x2)
    
    output <- list(Flag = 0,
                   Solutions = values)
    
  }
  
  # Checking if equation's determinant equals zero
  # - if TRUE, a warning message is returned, along with the equation's solution
  # - if FALSE, the equation's solutions are returned
  
  else if (identical(det_val, 0)) {
    
    x <- (-b_convert + sqrt(det_val))/(2 * a_convert)
    
    values <- c(a_convert, b_convert, c_convert)
    
    output <- list(Flag = 5,
                   Message = "Warning: double solution is present (i.e. determinant equals zero).",
                   Input = values,
                   Solution = x)
    
    return(output)
    
  }
  
  else {
    
    values <- c(a_convert, b_convert, c_convert)
    
    output <- list(Flag = 6,
                   Message = "Error: determinant is less than zero, there are no real solutions for equation.",
                   Input = values,
                   Determinant = det_val)
    
    return(output)
    
  }
  
  return(output)
  
} 

# CMD_QuadSolver_Phase1p5()