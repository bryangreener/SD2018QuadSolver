##################### Input Convert Spike ##############

#### Author: Paul R Phillips

################## input is taken in as one string instead of 3 separate ##############

CMD_Convert <- function() {
  # Command for user input:
  cat("Please enter variables in the format 'a,b,c':")
  
  input1 <- readLines(con = "stdin", 1)
  
  input2 <- strsplit(input1, ",")
  
  Input <- unlist(input2)
  
  #   Conversion of values a, b, and c from character to numeric:
  
  a <- as.numeric(Input[1])
  
  b <- as.numeric(Input[2])
  
  c <- as.numeric(Input[3])
 
  values <- c(a, b, c) 
  
  return(values)
}

CMD_Convert()