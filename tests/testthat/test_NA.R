context("test dataFrame has no null value")

test_that("dataFrame have zero NA values",{

  res = check_NA(dataFrame)

  expect_equal(res,0)

})
