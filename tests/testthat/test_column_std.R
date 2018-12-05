library(customerChurnUU)

context("Checking column standard deviation")

test_that("check variance of an observation variable",{
  expect_equal(round(column_std(processed_data(sample_read()), "MonthlyCharges")), 30)
})
