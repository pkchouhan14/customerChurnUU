gen_confusion_matrix<-function(predic,data,colName){
  table(data[colName],predic > 0.5)
 # confusionMatrix(model,data[colName])
}
