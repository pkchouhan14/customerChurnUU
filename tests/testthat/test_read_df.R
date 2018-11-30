library(customerChurnUU)
context("check read data")

#test_that("dataFrame read",{
#  telecomDataframe<-sample_read()
#  if(ls()=="character(0)"){
#    print("No dataset read")
#  }
#})

test_that("check NA in the column",{
expect_equal(check_NA(sample_read(),"TotalCharges"),11)
})

test_that("check read data have zero NA values",{
  expect_equal(sum(is.na(sample_read())),0)
})
