#' Title check the column values are in the given range
#'
#' @param data dataframe
#' @param colName  column name to check in the range
#' @param loVal lower value of the range
#' @param hiVal higher value of the range
#'
#' @return total rows that are in range
#' @export
#'
#' @examples
#' nobleGasses <- data.frame(Gas=c("Helium","Neon", "Argon", "Krypton", "Xenon", "Radon", "Oganesson"),
#' Symbol=c("He","Ne","Ae","Kr","Xe","Rn","Og"), Nr=c(2,10,18,36,54,86,118),
#' Mass=c(4.003,20.18,39.948,83.8,131.293,222,294))
#' check_column_range(nobleGasses, "Mass",4,50)   # reutrns 3
#' check_column_range(nobleGasses, "Mass",30,50)   # reutrns 1
count_column_range<-function(data, colName,loVal,hiVal){
  #totalInRange<-sum((unlist(data[colName]) > loVal) & unlist((data[colName]) < hiVal)) ##same as below
  totalInRange<-sum((unlist(data[,colName]) > loVal) & unlist((data[,colName]) < hiVal))
  return(totalInRange)
}




