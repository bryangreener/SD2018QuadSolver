##################### readLines Spike ##############

#### Author: Paul R Phillips

################## input is taken in as one string instead of 3 separate ##############

CMD_readLine <- function() {
  # Command for user input:
  cat("Please enter variables in the format 'a,b,c':")
  
  input1 <- readLines(con = "stdin", 1)
  
  return(input1)
  
}

CMD_readLine()