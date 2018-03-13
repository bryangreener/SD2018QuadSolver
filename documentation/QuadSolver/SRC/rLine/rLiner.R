########################################## rLiner ############################################3

#### Author: Paul R Phillips

#### Description: User-prompt for input

rLiner <- function() {
  
  # User-prompt for input: values 'a', 'b', and 'c'
  
  cat("Please enter variables in the format 'a,b,c':")
  
  input1 <- readLines(con = "stdin", 1)
  
  input2 <- strsplit(input1, ",")
  
  Input <- unlist(input2)
  
  # Conversion of values a, b, and c from character to numeric:
  
  a <- as.numeric(Input[1])
  
  b <- as.numeric(Input[2])
  
  c <- as.numeric(Input[3])
  
  # Store converted values as values to pass for validator function
  
  values <- c(a, b, c)
  
  return(values)
}
