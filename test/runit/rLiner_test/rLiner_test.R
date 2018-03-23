############### rLiner test #################

# Test validates rLiner's input conversion from string to numeric

# Packages Used:
library(RUnit)

# rLiner's code without user prompt

rLiner_trial <- function(a,b,c) {
  
  # Conversion of values a, b, and c from character to numeric:
  
  a <- as.numeric(a)
  
  b <- as.numeric(b)
  
  c <- as.numeric(c)
  
  # Store converted values as values to pass for validator function
  
  values <- c(a, b, c)
  
  return(values)
}


test.rLiner_trial <- function() {
  
  checkEquals(length(rLiner_trial("4","5","6")), 3)
  checkIdentical(rLiner_trial("4", "5.565", "3.32e10"), c(4.000e+00,5.565e+00, 3.32e10))
}


