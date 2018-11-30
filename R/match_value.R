#' Title
#'
#' @param data data frame
#' @param colVal columnName or column Number that need to be checked for specific values
#' @param value1 value to be checked for
#' @param value2 value to be chekced for
#'
#' @return total rows with matched value
#' @export
#' @examples
#' from flight data check the delayed
#' iris$Species[which(match_value(iris,4,0.1,0.5))]
#' iris$Species[which(match_value(iris,"Petal.Width",0.1,0.5))]
match_value<-function(data,colName,value1){
  if((unlist(data[colName]) == value1))
  listMatchValue<-
  return(listMatchedValue)
}

