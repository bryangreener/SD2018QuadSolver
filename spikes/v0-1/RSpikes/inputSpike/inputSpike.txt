############# Spike NaN's, +-Inf, NA, and non-numeric input ############

inputValidator <- function(x) {
  
  x_convert <- as.numeric(x)
  
  if (is.na(x_convert) || is.infinite(x_convert)) {
    
    output <- paste0("Error: Non-numeric or infinite values have been detected.: ", x) 
    
    output <- list(Message = output, Input = x)
    
    return(output)
    
  }  else {
      
      paste0(x_convert," is a numeric, finite value")
      
    }
}

#### Data Used

# - "f", 1, NA, NaN, Inf, -Inf