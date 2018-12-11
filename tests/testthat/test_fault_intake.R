library(customerChurnUU)

context("Checking Fault intake")

test_that("not missing",{
  expect_equal(check_NA(processed_data(sample_read()),"MonthlyCharges"),0)
})

#test_that("not negative in data",{
#  expect_equal(check_negative(processed_data(sample_read())),0)
#})

test_that("not negative in column",{
    expect_equal(check_negative_col(processed_data(sample_read()),"MonthlyCharges"),0)
})
