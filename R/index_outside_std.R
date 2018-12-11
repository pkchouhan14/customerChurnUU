#' Title flagging values outside x standard deviations
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
#' length(index_outside_std(hnobleGasses,"Nr",20))   #return 3
index_outside_std<-function(data,colName){
  stdValue<- column_std(data, colName)
  indexGstd <- which(data[,colName] >= stdValue)
  return(indexGstd)
}
