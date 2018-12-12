#' Title compute chi square test for labelled column
#'
#' @param data dataframe
#' @param colName label column name
#'
#' @return chi square test parameters
#' @export
#'
#' @examples
#' chisq_test(iris,"Species")    #return Chi-squared test for given probabilities data:  count_each_label X-squared = 0, df = 2, p-value = 1
chisq_test<-function(data, colName){
  label_count<-unique_values_column(data,colName) # number of different labelled values
  label_val<-unique(data[,colName]) # actual values of the labels
  count_each_label<-summary(data[,colName]) # count how many of each label type

  chisq_result<-chisq.test(count_each_label)

  #label_per<-vector("list",label_count)
  #for(i in 1:label_count){
    #nam<-paste("label_per", i, sep = "-")
    #percent<-((count_each_label[i])*100)/nrow(data)
   # label_per[[i]]<-percent
  #}
  #setNames(label_per, paste("label_per", sep = "-", 1:label_count))

  #levels(data[,colName])[1]

  return(chisq_result$p.value)
}
