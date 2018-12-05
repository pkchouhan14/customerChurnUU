library(customerChurnUU)

context("Checking column variance")

test_that("check variance of an observation variable",{
  expect_equal(round(column_variance(processed_data(sample_read()), "MonthlyCharges")), 905)
})
