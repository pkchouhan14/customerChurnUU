#' Title calculate the standard deviation
#'
#' @param data dataframe
#' @param colName columname
#'
#' @return standard deviation of an observation variable
#' @export
#'
#' @examples
#' nobleGasses <- data.frame(Gas=c("Helium","Neon", "Argon", "Krypton", "Xenon", "Radon", "Oganesson"),
#' Symbol=c("He","Ne","Ae","Kr","Xe","Rn","Og"), Nr=c(2,10,18,36,54,86,118),
#' Mass=c(4.003,20.18,39.948,83.8,131.293,222,294))
column_std<-function(data,colName){
    variance<- column_variance(data, colName)
    col_std<-sqrt(variance)
    return(col_std)
}
