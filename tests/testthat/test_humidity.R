library(customerChurnUU)

context("Checking relative humidity")

test_that("not missing",{
  expect_equal(check_NA(processed_data(sample_read()),"MonthlyCharges"),0)
})

test_that("between 1000 and 10000",{
  expect_equal(count_column_range(processed_data(sample_read()), "MonthlyCharges",1000,10000),0)
})

test_that("on Sepal.Length column of isis dataset",{
  expect_equal(count_column_range(iris, "Sepal.Width",3,5),67)
})

test_that("on Sepal.Length column of isis dataset",{
  expect_equal(count_column_range(iris, "Petal.Width",1,2),64)
})
test_that("on Sepal.Length column of isis dataset",{
  expect_equal(count_column_range(iris, "Petal.Length",4,7),84)
})


