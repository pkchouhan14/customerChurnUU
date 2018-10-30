#' Title
#'
#' @param x what you want in the first column
#' @param y what you want in the second column
#'
#' @return A tibble
#' @export
#'
#'@importFrom tibble data_frame
#'@importFrom utils head adist
#' @examples
#' printer(x=rnorm(5), y=rnorm(5))
printer = function(x,y){
  x = data_frame(x=x,y=y)
  print(head(x))
  #print(paste0("x = ", x))
  return(x)
}
