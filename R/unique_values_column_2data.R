#' Title match column unique values of 2 dataframes
#'
#' @param data1 dataframe
#' @param data2 dataframe
#' @param colName column name
#'
#' @return TRUE if column have same unique values in two datasets
#' @export
#'
#' @examples
#' #' nobleGasses <- data.frame(Gas=c("Helium","Neon", "Argon", "Krypton", "Xenon", "Radon", "Oganesson"),
#' Symbol=c("He","Ne","Ae","Kr","Xe","Rn","Og"), Nr=c(2,10,18,36,54,86,118),
#' Mass=c(4.003,20.18,39.948,83.8,131.293,222,294), UniqTest=c(2,3,4,2,4,3,5))
#'
#' NnobleGasses <- data.frame(Gas=c("Helium","Neon", "Argon", "Krypton", "Xenon", "Radon", "Oganesson"),
#' Symbol=c("He","Ne","Ae","Kr","Xe","Rn","Og"), Nr=c(2,10,18,36,54,86,118),
#' Mass=c(4.003,20.18,39.948,83.8,222,222,222))
#'
#' unique_values_column_2data(nobleGasses,NnobleGasses,"Gas")          #reutrn TRUE
#' unique_values_column_2data(nobleGasses,NnobleGasses,"Mass")          #reutrn FALSE
unique_values_column_2data<-function(data1, data2, colName){
  Udata1<-unique_values_column(data1,colName)
  Udata2<-unique_values_column(data2,colName)
  if(Udata1==Udata2)
    return (TRUE)
  else
    return (FALSE)
}
