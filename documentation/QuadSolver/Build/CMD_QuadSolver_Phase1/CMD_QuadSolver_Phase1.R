CMD_QuadSolver_Phase1 <- function() {
  
  # User-prompt for input: values 'a', 'b', and 'c'
  
  cat("Please enter variables in the format 'a,b,c':")
  
  input1 <- readLines(con = "stdin", 1)
  
  input2 <- strsplit(input1, ",")
  
  Input <- unlist(input2)
  
  #   Conversion of values a, b, and c from character to numeric:
  
  a <- as.numeric(Input[1])
  
  b <- as.numeric(Input[2])
  
  c <- as.numeric(Input[3])
  
  # Flags for incorrect input (specifically missing values, character values, and Inf values provided)
  # Note: 'a', 'b', and 'c' are evaluated individually
  # - if non-numeric or Inf values are present, an error message is returned to user, 
  #    along with the value that was converted to NA
  # - NaN's are caught at this step, will return the error message if inputted
  
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
  
  # Checking for input that is out of floating point range
  
  if (a < 2^-126 || a > ((2-2^-23) * 2^127)) {
    
    values <- c(a, b, c)
    
    output <- list(Flag = 2,
                   Message = "Error: Value is not within floating point range.",
                   Input = values)
    
    return(output)
  }
  
  else if (b < 2^-126 || b > ((2-2^-23) * 2^127)) {
    
    values <- c(a, b, c)
    
    output <- output <- list(Flag = 2,
                             Message = "Error: Value is not within floating point range.",
                             Input = values)
    
    return(output)
  }
  
  else if (c < -2^-126 || c > ((2-2^-23) * 2^127)) {
    
    values <- c(a, b, c)
    
    output <- output <- list(Flag = 2,
                             Message = "Error: Value is not within floating point range.",
                             Input = values)
    
    return(output)
  }
  
  # Checking if a = 0
  # - if a = 0 is TRUE, a message is returned indicating a cannot equal zero
  # - if a = 0 is FALSE, a message is returned indicating input meets criteria, along with input values
  
  if (a != 0) {
    
    det_val <- (b * b) - (4 * a * c)
    
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
    
    x1 <- (-b + sqrt(det_val))/ (2 * a)
    
    x2 <- (-b - sqrt(det_val))/ (2 * a)
    
    output <- list(Flag = 0, 
                   X1 = x1, 
                   X2 = x2)
    
  }
  
  # Checking if equation's determinant equals zero
  # - if TRUE, a warning message is returned, along with the equation's solution
  # - if FALSE, the equation's solutions are returned
  
  else if (identical(det_val, 0)) {
    
    x <- (-b + sqrt(det_val))/(2 * a)
    
    values <- c(a, b, c)
    
    output <- list(Flag = 4,
                   Message = "Warning: double solution is present (i.e. determinant equals zero).",
                   Input = values,
                   Solution = x)
    
    return(output)
    
  }
  
  else {
    
    values <- c(a, b, c)
    
    output <- list(Flag = 5,
                   Message = "Error: determinant is less than zero, there are no real solutions for equation.",
                   Input = values,
                   Determinant = det_val)
    
    return(output)
    
  }
  
  return(output)
  
} 
 
# Test data that works: 5, 4, 0.001

CMD_QuadSolver_Phase1()