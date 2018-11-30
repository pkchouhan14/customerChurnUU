library(customerChurnUU)

context("Checking median is calculated correctly")

test_that("median mintemp",{
  expect_equal(cal_median(sample_read(),"MonthlyCharges"),70.35)
})
