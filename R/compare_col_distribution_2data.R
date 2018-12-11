#' Title check if column distribution of two dataframe are same
#'
#' @param data1 data frame
#' @param data2 data frame
#' @param colName column name
#'
#' @return TRUE if column has different distribution
#' @export
#'
#' @examples
#' nobleGasses <- data.frame(Gas=c("Helium","Neon", "Argon", "Krypton", "Xenon", "Radon", "Oganesson"),
#' Symbol=c("He","Ne","Ae","Kr","Xe","Rn","Og"), Nr=c(2,10,18,36,54,86,118),
#' Mass=c(4.003,20.18,39.948,83.8,131.293,222,294))
#' NnobleGasses <- data.frame(Gas=c("Helium","Neon", "Argon", "Krypton", "Xenon", "Radon", "Oganesson"),
#' Symbol=c("He","Ne","Ae","Kr","Xe","Rn","Og"), Nr=c(2,10,18,36,54,86,118),
#' Mass=c(4.003,20.18,39.948,83.8,131293,222,29400))
#' compare_col_distribution_2data(nobleGasses,hnobleGasses,"Nr")    #return FALSE
#' compare_col_distribution_2data(nobleGasses,hnobleGasses,"Mass")  # return TRUE
compare_col_distribution_2data<-function(data1,data2,colName){
  #shapiro test sample size must be between 3 and 5000

  if (nrow(data1)>5000)
    rowVal1=5000
  else
    rowVal1=nrow(data1)


  if (nrow(data2)>5000)
    rowVal2=5000
  else
    rowVal2=nrow(data2)

  sample_data1<-data1[sample(nrow(data1), rowVal1), ]
  check_st1<-shapiro.test(sample_data1[,colName])

  sample_data2<-data2[sample(nrow(data2), rowVal2), ]
  check_st2<-shapiro.test(sample_data2[,colName])

  diff<-abs(check_st1[2]$p.value - check_st2[2]$p.value)

  if(diff>0.1)
    return(TRUE)
  else
    return(FALSE)
}
