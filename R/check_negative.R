#' Title check Negative values in a dataframe
#'
#' @param data dataframe
#'
#' @return number of Negative values in dataframe
#' @export
#'
#' @examples
#' A = data.frame(B=c(1,2,3,-4),C=c(-1,-2,3,4))
#' check_negative(A)  # return 3
check_negative = function(data){

  # count how many negative values
  countNegative <- sum((data<0))

  return(countNegative)
}
