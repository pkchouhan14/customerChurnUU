#' Title count unique values in a given column
#'
#' @param data dataframe
#' @param colName column name
#'
#' @return unique values in a column
#' @export
#'
#' @examples
unique_values_column<-function(data,colName){
  count_unique<-length(unique(data[,colName]))
  return(count_unique)
}
