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
  trainData<-ldply(dividedData[1],data.frame)
  trainData$.id<-NULL
  #print(trainData)

  testData<-ldply(dividedData[2],data.frame)
  testData$.id<-NULL
  #print(testData)

  #if(model=="LG")
  {
    #model<-lg_Model(data,colName)
    #lg_model <- glm(unlist(trainData[colName])~.,family=binomial(link = "logit"),data=trainData)
    #lg_pred<-predict(lg_model,newdata = testData, type = intype)
    #lg_conf_mat<-confusionMatrix(lg_pred,dividedData[colName])
  }
  #if(model=="DT")
  {
    #dt_model<-decision_tree(data,colName)
    dt_model<- tree(unlist(trainData[colName])~ .,data = trainData)
    dt_pred<-predict(dt_model,newdata = testData, type = intype)
    dt_conf_mat<-confusionMatrix(dt_pred,unlist(testData[colName]))
    #library('pROC')
    #plot(roc(unlist(testData[colName]),dt_pred))
  }
  #if(model=="RF")
  {
    #rf_model<-randomForest(data,colName)
    rf_model<-randomForest(unlist(trainData[colName])~ .,data = trainData)
    rf_pred<-predict(rf_model,newdata = testData, type = intype)
    rf_conf_mat<-confusionMatrix(rf_pred,unlist(testData[colName]))
  }

  # #if(model=="SVM")
  # {
  #   library(e1071)
  # svm_model <- svm(unlist(trainData[colName])~ .)
  # svm_pred <- predict(svm_model,newdata = testData, type = intype)
  # svm_conf_mat<-confusionMatrix(svm_pred,unlist(testData[colName]))
  # }

  conf_mat<- list("dt"=dt_conf_mat, "rf"=rf_conf_mat)
  return(conf_mat)
}
