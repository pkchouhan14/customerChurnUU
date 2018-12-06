#' Title Dependent t test
#'
#' @param data dataframe
#' @param colName columname
#'
#' @return cohen's d value
#' @export
#'
#' @examples
cohens_d<-function(data,colName){
  # Get the sample size
  n <- nrow(data)

  # Mean of the column values
  mean_diff <- sum(data[colName]) / n

  # Standard deviation
  sd_diff <- sqrt(sum((data[colName] - mean_diff)^2) / (n - 1))

  # compute cohen's d
  cohens_d_val <- mean_diff / sd_diff

  return(cohens_d_val)
}
