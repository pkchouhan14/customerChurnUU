library(customerChurnUU)

context("Checking temperature")

test_that("not missing",{
  expect_equal(check_NA(processed_data(sample_read()),"MonthlyCharges"),0)
})

#limits set well beyond limits of actual observed value
test_that("between 10 and 1000",{
  expect_equal(count_column_range(processed_data(sample_read()), "MonthlyCharges",10,1000),nrow(processed_data(sample_read())))
})
