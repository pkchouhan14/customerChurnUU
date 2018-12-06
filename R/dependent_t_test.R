#' Title Dependent t test
#'
#' @param data dataframe
#' @param colName columname
#'
#' @return t-value
#' @export
#'
#' @examples
dependent_t_test<-function(data,colName){
# Get the sample size
n <- nrow(data)

# Mean of the column values
mean_diff <- sum(data[colName]) / n

# Standard deviation
sd_diff <- sqrt(sum((data[colName] - mean_diff)^2) / (n - 1))

# Observed t-value
t_obs <- mean_diff / (sd_diff / sqrt(n))

#return observed t-value
return(t_obs)
}
