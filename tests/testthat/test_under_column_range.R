library(customerChurnUU)

context("Checking column value under minimum range for outliers")

test_that("",{
  expect_equal(under_column_range(sample_read(), "MonthlyCharges", 20), 613)
})
