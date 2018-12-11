library(customerChurnUU)

context("Checking temperature")

test_that("not missing",{
  expect_equal(check_NA(processed_data(sample_read()),"MonthlyCharges"),0)
})

#9E99 is very large number, check below the given value  or well beyond limits of actual value
test_that("values higher than the highest given value",{
  expect_equal(over_column_range(processed_data(sample_read()), "MonthlyCharges", 118.75),0)
})

#check below the given value
test_that("values higher than the highest given value",{
  expect_equal(under_column_range(processed_data(sample_read()), "MonthlyCharges", 18.25),0)
})

#limits set as expected from observed column
test_that("between 10 and 1000",{
  expect_equal(count_column_range(processed_data(sample_read()), "MonthlyCharges",10,1000),nrow(processed_data(sample_read())))
})
