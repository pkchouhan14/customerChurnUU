#' Title check if 2 column (numeric vector) have the same variance
#'
#' @param data dataframe
#' @param colName1 Name of the column
#' @param colName2 Name of the column
#'
#' @return fTestVariance ftest console output as variable
#' @export
#'
#' @examples
#' dataTest <- data.frame(x=c(rnorm(30, mean = 0, sd = 2)), y=c(rnorm(30, mean = 1, sd = 1)))
#' f_test_vector(dataTest,"x","y")
f_test_vector<-function(data, colName1, colName2){
  typeof(unlist(data[colName1]))
  fTestVariance<-var.test(unlist(data[colName1]), unlist(data[colName2]))
  return(fTestVariance)
}
