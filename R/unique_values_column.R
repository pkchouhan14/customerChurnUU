#' Title count unique values in a given column
#'
#' @param data dataframe
#' @param colName column name
#'
#' @return unique values in a column
#' @export
#'
#' @examples
#' #' nobleGasses <- data.frame(Gas=c("Helium","Neon", "Argon", "Krypton", "Xenon", "Radon", "Oganesson"),
#' Symbol=c("He","Ne","Ae","Kr","Xe","Rn","Og"), Nr=c(2,10,18,36,54,86,118),
#' Mass=c(4.003,20.18,39.948,83.8,131.293,222,294), UniqTest=c(2,3,4,2,4,3,5))
#' unique_values_column(nobleGasses,"Gas")          #reutrn 7
#' unique_values_column(nobleGasses,"UniqTest")     # retrun 4
unique_values_column<-function(data,colName){
  count_unique<-length(unique(data[,colName]))
  return(count_unique)
}
