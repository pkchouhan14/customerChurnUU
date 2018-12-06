library(customerChurnUU)

context("Checking column standard deviation, dependent t-test, cohen's d")

test_that("check variance of an observation variable",{
  expect_equal(round(column_std(processed_data(sample_read()), "MonthlyCharges")), 30)
})

test_that("t-test of an observation variable",{
  expect_equal(round(dependent_t_test(processed_data(sample_read()), "MonthlyCharges")), 181)
})

test_that("cohen's d of an observation variable",{
  expect_equal(round(cohens_d(processed_data(sample_read()), "MonthlyCharges")), 2)
})
