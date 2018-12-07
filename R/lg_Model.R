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
lg_Model<-function(data, colName, divRatio){
  print(colName)
  dividedData<-divide_data_test_train(data, divRatio)
  print(dividedData[1])
  lgModel <- glm(data[colName] ~ .,family=binomial(link="logit"),data=dividedData[1])
  return(lgModel)
}
