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
#' test_model_testdata(data,divRatio,churn,"response")
test_model_testdata<-function(data,divRatio,colName,intype){
  dividedData<-divide_data_test_train(data, divRatio)
  trainData=dividedData[1]
  testData<-dividedData[2]

  #if(model=="LG")
  {
    #model<-lg_Model(data,colName)
  #  lg_model <- glm(data[colName] ~ .,family=binomial(link="logit"),data=trainData)
   # lg_pred<-predict(lg_model,newdata = testData, type = intype)
  #  lg_conf_mat<-confusionMatrix(lg_pred,dividedData[colName])
  }
  #if(model=="DT")
  {
    #dt_model<-decision_tree(data,colName)
    dt_model<- tree(unlist(data[colName])~ .,data = trainData)
    dt_pred<-predict(dt_model,newdata = testData, type = intype)
    dt_conf_mat<-confusionMatrix(dt_pred,dividedData[colName])
  }
  #if(model=="RF")
  {
    #rf_model<-randomForest(data,colName)
    rf_model<-randomForest(data[colName] ~ .,data = trainData)
    rf_pred<-predict(rf_model,newdata = testData, type = intype)
    rf_conf_mat<-confusionMatrix(rf_pred,dividedData[colName])
  }
  return(rf_conf_mat)
}
