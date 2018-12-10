#' Title check the column's value is not above ~10 times the highest value ever seen in the historical data
#'
#' @param hdata historic data dataframe
#' @param data dataframe
#' @param colName  column name to check in for the over range
#'
#' @return total rows that are over the given range
#' @export
#'
#' @examples
#' hnobleGasses <- data.frame(Gas=c("Helium","Neon", "Argon", "Krypton", "Xenon", "Radon", "Oganesson"),
#' Symbol=c("He","Ne","Ae","Kr","Xe","Rn","Og"), Nr=c(2,10,18,36,54,86,118),
#' Mass=c(4.003,20.18,39.948,83.8,131.293,222,294))
#' nobleGasses <- data.frame(Gas=c("Helium","Neon", "Argon", "Krypton", "Xenon", "Radon", "Oganesson"),
#' Symbol=c("He","Ne","Ae","Kr","Xe","Rn","Og"), Nr=c(2,10,18,36,54,86,118),
#' Mass=c(4.003,20.18,39.948,83.8,131.293,222,29400))
#' over_times_column(hnobleGasses, nobleGasses, "Mass")   # reutrns 1
over_times_column<-function(hdata, data, colName){

  #highest value in the column in historic data
  hiVal<-max(unlist(hdata[,colName]))

  totalOverRange<-over_column_range(data, colName, hiVal)

  return(totalOverRange)
}
