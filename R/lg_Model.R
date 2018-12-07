#' Title logistic regression model on the data
#'
#' @param data
#' @param colName
#' @param divRatio
#'
#' @return
#' @export
#'
#' @examples
#' lg_Model(processed_data(sample_read()),churn,75)
lg_Model<-function(data, colName){
  print(colName)
  dividedData<-divide_data_test_train(data, divRatio)
  trainData<-dividedData[1]
  lgModel <- glm(data[colName] ~ .,family=binomial(link="logit"),data=trainData)
  return(lgModel)
}
