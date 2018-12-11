library(customerChurnUU)

context("Checking Time series type anomalies")

test_that("check x standard deviations with a given value",{
  expect_gte(column_std(processed_data(sample_read()),"MonthlyCharges"),30.08597)
})

test_that("flagging values outside x standard deviations",{
  expect_null(length(index_outside_std(processed_data(sample_read()),"MonthlyCharges")))
})

test_that("check if x is normal distribution",{
  expect_true(check_normal_distribution(processed_data(sample_read()),"MonthlyCharges"))
})


test_that("check if x has different distribution in 2 datasets",{
  expect_false(compare_col_distribution_2data(processed_data(sample_read()),sample_read(),"MonthlyCharges"))
})
