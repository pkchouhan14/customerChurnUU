library(customerChurnUU)

context("check processed data")

test_that("check processed data have zero NA values",{
  expect_equal(sum(is.na(processed_data(sample_read()))),0)
})

test_that("check primary column has unique values",{
  expect_equal(unique_values_column(processed_data(sample_read()), "customerID"), nrow(processed_data(sample_read())))
})

##can be used to check start time and end time columns
test_that("check one column value is more than another",{
  expect_equal(compare_two_values(processed_data(sample_read()),"TotalCharges","MonthlyCharges"),0)
})

test_that("check length of unique types of a column",{
  expect_equal(unique_values_column(processed_data(sample_read()), "MultipleLines"),2)
})

test_that("check length of unique types of a column",{
  expect_equal(unique_values_column(processed_data(sample_read()), "OnlineSecurity"),2)
})

test_that("check length of unique types of a column",{
  expect_equal(unique_values_column(processed_data(sample_read()), "DeviceProtection"),2)
})

test_that("check length of unique types of a column",{
  expect_equal(unique_values_column(processed_data(sample_read()), "TechSupport"),2)
})

test_that("check length of unique types of a column",{
  expect_equal(unique_values_column(processed_data(sample_read()), "StreamingTV"),2)
})

test_that("check length of unique types of a column",{
  expect_equal(unique_values_column(processed_data(sample_read()), "StreamingMovies"),2)
})
