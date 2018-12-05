#' Title calculate the variance
#'
#' @param data dataframe
#' @param colName columname
#'
#' @return variance of an observation variable
#' @export
#'
#' @examples
#' nobleGasses <- data.frame(Gas=c("Helium","Neon", "Argon", "Krypton", "Xenon", "Radon", "Oganesson"),
#' Symbol=c("He","Ne","Ae","Kr","Xe","Rn","Og"), Nr=c(2,10,18,36,54,86,118),
#' Mass=c(4.003,20.18,39.948,83.8,131.293,222,294))
#' column_variance(nobleGasses,"Nr")  # reutrn 3.365807e-29
#' column_variance<-function(data,colName){
column_variance<-function(data,colName){
  colMean<-mean(unlist(data[colName]))
  colSum<-sum(unlist(data[colName])-colMean)^2
  lengthCal<-length(unlist(data[colName]))-1
  variance<-colSum/lengthCal
  #col_std<-sqrt(variance)
  a<-unlist(data[colName])
  variance<-sum((a-mean(a))^2/(length(a)-1))
  return(variance)
}

