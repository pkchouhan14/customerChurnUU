library(customerChurnUU)

context("Checking predipitation")

test_that("not missing",{
  expect_equal(check_NA(processed_data(sample_read()),"MonthlyCharges"),0)
})

#test_that("not negative in data",{
#  expect_equal(check_negative(processed_data(sample_read())),0)
#})

test_that("not negative in column",{
  expect_equal(check_negative_col(processed_data(sample_read()),"MonthlyCharges"),0)
})

test_that("not above ~10 times",{
  expect_equal(over_times_column(processed_data(sample_read()),sample_read(),"MonthlyCharges"),0)
})
