
#' Title
#'
#' @param data dataframe
#' @param colName column name
#'
#' @return calMedian median of the column
#' @export
#'
#' @examples
#' nobleGasses <- data.frame(Gas=c("Helium","Neon", "Argon", "Krypton", "Xenon", "Radon", "Oganesson"),
#' Symbol=c("He","Ne","Ae","Kr","Xe","Rn","Og"), Nr=c(2,10,18,36,54,86,118),
#' Mass=c(4.003,20.18,39.948,83.8,131.293,222,294))
#' cal_median(nobleGasses,"Mass")  # returns 83.3
#' cal_median(nobleGasses,4)       # returns 83.3
cal_median<-function(data,colName)
{
  calMedian <- median(unlist(data[colName]))
  return(calMedian)
}

