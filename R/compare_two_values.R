#' Title compare 2 columns values
#'
#' @param data data frame
#' @param colName1 first column name
#' @param colName2 second column name
#'
#' @return number of times column have different values then condition
#' @export
#'
#' @examples
#' nobleGasses <- data.frame(Gas=c("Helium","Neon", "Argon", "Krypton", "Xenon", "Radon", "Oganesson"),
#' Symbol=c("He","Ne","Ae","Kr","Xe","Rn","Og"), Nr=c(2,10,18,36,54,86,118),
#' Mass=c(4.003,20.18,39.948,83.8,131.293,222,294))
#' compare_two_values(nobleGasses, "Mass","Nr")   # reutrns 7
#' compare_two_values(nobleGasses,"Nr", "Mass")   # reutrns 0
compare_two_values<-function(data,colName1,colName2){
  count<-0
  for (i in 1:(nrow(data))) {
   if(data[i, colName1] < data[i, colName2])
      count<-count+1  }
  return(count)
}
