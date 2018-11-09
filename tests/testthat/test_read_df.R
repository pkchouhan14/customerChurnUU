context("test dataFrame")

test_that("dataFrame read",{
  telecomDataframe <- sample_read("Telco_Customer_Churn.csv")
}