############################### QS_Input_Validator ####################################

#### Author(s): Paul R Phillips, Bryan Green, Dylan Martin
#### Date Created: 1/14/18
#### Description

# The QS_Input_Validator prompts the user to input 3 values (a, b, c). This format follows the assumption
# the input values are derived from a standard quadratic equation (ax^2 + bx + c). After the values are
# inputted the function first stores these values as (a, b, c), then converts them to numeric format 
# (Note: In R, the numeric format allows for calculation of both integer and double formats). Once values
# are converted the function's primary purpose is to indentify NaN's, NA's, +-Inf, character values, 
# and if a = 0. 

#### Objects, attributes

# - a, b, c (character): Initial storage of inputted values
# - a_convert, b_convert, c_convert (numeric): a, b, c objects converted to R's numeric format
#   - Note: a, b, c are kept in function for user-interpretability purposes with respect to return messages
# - output (list): object returned to user
#   - Note: This object typically stores a message for user, as well as input values for users to see
# - Message (character): message returned to user; typically formatted as either an "Error" or "Warning".
# - Input (character or numeric): object used to return inputted values to user; if values pass all checks
#                                 it is returned in numeric format, otherwise in character

#### Flags

# 0 = "Message: Input meets criteria for calculations."
# 1 = "Error: Non-numeric or infinite values have been detected."
# 2 = "Error: Value is not within floating point range."
# 3 = "Error: Value 'a' cannot equal zero"

#### File Path: C:\Users\paulp\Desktop\DataScience\WMU\CS4900\JKK_Consultant\QuadSolver_Input_Validation

#### OS specifications: 

# Windows edition: Windows 10 Home
# System type: 64-bit Operating System, x64-based processor

#### R version: 3.4.3 (2017-11-30)

# Platform: Platform: x86_64-w64-mingw32/x64 (64-bit)

# Note: These conditional statements catch character values that were converted to NA's (since R converts
#       character values to NA's if present). 
# Note: All values inputted are initially stored as character values. This is the protocol for the readline
#       function

# Check out . Machine
# Checks for inside range
# Flag 1st, message, 
# List of error messages, return index

####################################### End of Comment Block ###############################################

QS_Input_Validator <- function(x) {

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
   
   if (a_convert < -10^-44.85 || a_convert > ((2-2^-23) * 2^127)) {
     
     values <- c(a, b, c)
     
     output <- list(Flag = 2,
                    Message = "Error: Value is not within floating point range.",
                    Input = values)
     
     return(output)
   }
   
   else if (b_convert < -10^-44.85 || b_convert > ((2-2^-23) * 2^127)) {
     
     values <- c(a, b, c)
     
     output <- output <- list(Flag = 2,
                              Message = "Error: Value is not within floating point range.",
                              Input = values)
     
     return(output)
   }

   else if (c_convert < -10^-44.85 || c_convert > ((2-2^-23) * 2^127)) {
     
     values <- c(a, b, c)
     
     output <- output <- list(Flag = 2,
                              Message = "Error: Value is not within floating point range.",
                              Input = values)
     
     return(output)
   }
   
# Checking if a = 0
# - if a = 0 is TRUE, a message is returned indicating a cannot equal zero
# - if a = 0 is FALSE, a message is returned indicating input meets criteria, along with input values
   
   if(a_convert != 0) {
      
      values <- c(a_convert, b_convert, c_convert)
      
      output <- list(Flag = 0,
                     Message = "Message: Input meets criteria for calculations.",
                     Input = values)
      return(output)
      
   }

   else {

      values <- c(a, b, c)
      
      output <- list(Flag = 3,
                     Message = "Error: Value 'a' cannot equal zero.",
                     Input = values)
      
      return(output)
   }

   return(output)
   
} 
