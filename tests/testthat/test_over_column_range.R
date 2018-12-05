library(customerChurnUU)

context("Checking column value over range for outliers")

test_that("",{
  expect_equal(over_column_range(sample_read(), "MonthlyCharges", 115), 64)
})

