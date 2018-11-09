#' Count NAs in a vector
#'
#' @param x A vector
#'
#' @return number of NAs in x
#'
#' @examples
#' \dontrun{
#'    sumNa(airquality$Ozone)
#'    }
sum_na <-function(x){
  sum(is.na(x))
}
