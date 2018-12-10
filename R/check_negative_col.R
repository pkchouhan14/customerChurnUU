#' Title check Negative values in a data column
#'
#' @param data dataframe
#' @param colName column name
#'
#' @return number of Negative values in the column
#' @export
#'
#' @examples
#' A = data.frame(B=c(1,2,3,-4),C=c(-1,-2,3,4))
#' check_negative_col(A,"B") #return 1
#' check_negative_col(A,"C") #return 2
check_negative_col = function(data,colName){

  # count how many negative values
  countNegative <- sum(unlist(data[,colName])<0)

  return(countNegative)
}
