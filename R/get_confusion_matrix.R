gen_confusion_matrix<-function(data,colName){
  #table(data[colName],predic > 0.5)
  predic<-
  confusionMatrix(predic,data[colName])
}
