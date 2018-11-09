#' Count all NAs in a data set
#'
#' @param data A data frame or matrix
#'
#' @import purrr
#'
#' @return Vector of NA counts
#' @export
#'
#' @examples na_counter(airquality)
na_counter <-function(data){

  stopifnot(is.matrix(data) | is.data.frame(data))

  if(is.matrix(data)){
    data=as.data.frame(data)
  }
  map_int(data,sum_na)
}
