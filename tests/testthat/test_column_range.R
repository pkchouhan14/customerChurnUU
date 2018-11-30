library(customerChurnUU)

context("Checking column value range")

test_that("",{
  expect_equal(count_column_range(sample_read(), "MonthlyCharges",20,100),5479)
})


