########################################### qSolver #########################################

#### Author: Paul R Phillips

#### Description: Inputs "output" object from rNumber_Validator function. If the determinant value is greater
#                 than zero, the solutions to the standard quadratic equation are solved. If the determinant 
#                 equals zero, then a warning message is outputted along with the single solution. If the 
#                 determinant is less than zero, then an error message is returned indicating there are no real
#                 solutions for this equation. 

# Checking if the equation's determinant is greater than zero
# - if TRUE, equation's solutions are returned
# - if FALSE, a message is returned indicating determinant is less than zero

qSolver <- function(output) {
  
#### Defining variables
  
det_val <- output$Determinant

a <- output$a

b <- output$b

c <- output$c

# Checking if the determinant is greater than zero
  
if (det_val > 0.0) {
  
  x1 <- round((-b + sqrt(det_val))/ (2.0 * a), 7)
  
  x2 <- round((-b - sqrt(det_val))/ (2.0 * a), 7)
  
  zeros <- c(x1, x2)
  
  solution <- list(Flag = 0,
                 Solutions = zeros)
  
  return(solution)
  
}

# Checking if equation's determinant equals zero
# - if TRUE, a warning message is returned, along with the equation's solution
# - if FALSE, the equation's solutions are returned

else if (identical(det_val, 0.0)) {
  
  x <- round((-b + sqrt(det_val))/(2.0 * a), 7)
  
  values <- c(a, b, c)
  
  solution <- list(Flag = 5,
                   Message = "Warning: double solution is present (i.e. determinant equals zero).",
                   Input = values,
                   Solutions = x)
  
  return(solution)
  
}

else {
  
  values <- c(a, b, c)
  
  solution <- list(Flag = 6,
                   Message = "Error: determinant is less than zero, there are no real solutions for equation.",
                   Input = values,
                   Determinant = det_val)
  
  return(solution)
  
}

return(solution)

} 
