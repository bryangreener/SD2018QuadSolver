############ test_RealNumber #############################

context("Real Numbers")

test_that("Input is not NA", {
  expect_equal(is.numeric(a_convert), TRUE), 
  expect_equal(is.numeric(b_convert), TRUE),
  expect_equal(is.numeric(c_convert), TRUE),
}