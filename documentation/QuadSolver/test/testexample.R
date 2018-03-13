library(RUnit)

foo <- function(x) {
  x <- x*x 
  x<- "f"*x
  
  return(x)
}

test.foo <- function() {
  checkTrue(is.numeric(foo(1:10)))
  checkEquals(length(foo(1:10)), 10)
  checkEqualsNumeric(foo(1), 2)
}

foo(1:10)
