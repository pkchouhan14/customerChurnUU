library(customerChurnUU)

context("check processed data")

test_that("check processed data have zero NA values",{
  expect_equal(sum(is.na(omit_na(sample_read()))),0)
})

