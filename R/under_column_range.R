#' Title check the column's that have value over the column range
#'
#' @param data dataframe
#' @param colName  column name to check in for the over range
#' @param minVal lowest value of the range
#'
#' @return total rows that are under the given range
#' @export
#'
#' @examples
#' nobleGasses <- data.frame(Gas=c("Helium","Neon", "Argon", "Krypton", "Xenon", "Radon", "Oganesson"),
#' Symbol=c("He","Ne","Ae","Kr","Xe","Rn","Og"), Nr=c(2,10,18,36,54,86,118),
#' Mass=c(4.003,20.18,39.948,83.8,131.293,222,294))
#' under_column_range(nobleGasses, "Nr", 5)   # reutrns 1
under_column_range<-function(data, colName, loVal){
  #totalInRange<-sum((unlist(data[colName]) < loVal)) ##same as below
  totalUnderRange<-sum((unlist(data[,colName]) <  loVal))
  return(totalUnderRange)
}




