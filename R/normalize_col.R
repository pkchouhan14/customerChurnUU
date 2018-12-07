#' Title Normalize numeric data
#'
#' @param data dataframe
#' @param colName  column name
#'
#' @return
#' @export
#'
#' @examples
normalize_col<-function(data,colName){
  #(x - min(x)) / (max(x) - min(x))
  return((unlist(data[colName]) - min(unlist(data[colName]))) /
           (max(unlist(data[colName])) - min(unlist(data[colName]))))
}
