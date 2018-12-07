#' Title test the model with test dataset
#'
#' @param data dataframe
#' @param intype response, class
#' @param divRatio 75, 80 % to divide the data in test and train
#' @param colName labeled column name
#'
#' @return confusion matrix table
#' @export
#'
#' @examples
#' test_model_testdata(data,divRatio,churn,type="response")
test_model_testdata<-function(data,divRatio,colName, intype){
  dividedData<-divide_data_test_train(data, divRatio)
  model<-lg_Model(data,colName,divRatio)
  test.predictions <-predict(model,newdata=dividedData[2],type=intype)
  # if the prediction probability is greater than 0.5 then those
  # customers are classified as churned customer less than 0.5 are classified as not churning customer
  # fitted.results <- ifelse(test.predictions > 0.5,1,0)
  return(test.predictions)
}
