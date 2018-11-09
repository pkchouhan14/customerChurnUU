context("just testing printer functionality")

test_that("Whether printer gives us the same output",{

  set.seed(1)
  res = printer(x=rnorm(5), y=rnorm(5))

  expect_equal(nrow(res),5)

  cm = colMeans(res)
  expect_equal(cm, c(x = 0.129269895004571, y = 0.135135667587365))
})
