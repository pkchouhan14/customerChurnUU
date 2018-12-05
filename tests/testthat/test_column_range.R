library(customerChurnUU)

context("Checking column value range for outliers")

test_that("on Sepal.Length column of isis dataset",{
  expect_equal(count_column_range(iris, "Sepal.Length",5,7),105)
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

test_that("MonthlyCharges column of read (customerchurn) dataset",{
    expect_equal(count_column_range(sample_read(), "MonthlyCharges",20,100),5479)
  })
