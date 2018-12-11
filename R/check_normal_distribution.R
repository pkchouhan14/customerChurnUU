#' Title check if column distribution is normal
#'
#' @param data
#' @param colName
#'
#' @return TRUE if column has normal distribution
#' @export
#'
#' @examples
#' #' nobleGasses <- data.frame(Gas=c("Helium","Neon", "Argon", "Krypton", "Xenon", "Radon", "Oganesson"),
#' Symbol=c("He","Ne","Ae","Kr","Xe","Rn","Og"), Nr=c(2,10,18,36,54,86,118),
#' Mass=c(4.003,20.18,39.948,83.8,131.293,222,294))
#' check_normal_distribution(nobleGasses,"Mass")  # return FALSE
check_normal_distribution<-function(data,colName){
  #shapiro test sample size must be between 3 and 5000
  sample_data<-data[sample(nrow(data), 5000), ]
  check_st<-shapiro.test(sample_data[,colName])
  if(check_st[2]$p.value>0.5)
    return(TRUE)
  else
    return(FALSE)
}
