wLiner <- function(x) {

# convert input to a generic object
  
  x <- x
  
  # Set working directory to fOutput (output folder)
  
  setwd('C:/Users/paulp/Desktop/DataScience/WMU/CS4900/JKK_Consultant/QuadSolver/SRC_r/fOutput/')

  # Create file to write output to 
  
  file.create('qSolver_Output.txt')

  # Writes output displayed to user to .txt file 
  
  write.table(x, file = 'qSolver_Output.txt', sep="\t", row.names = FALSE, 
            append = FALSE, quote= FALSE)

}
