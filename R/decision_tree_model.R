
#' Title
#'
#' @param data data frame
#' @param colName label column name
#' @param divRatio data split (test/train) ratio 75%, 85%
#'
#' @return modelTree decision tree model
#' @export
#'
#' @examples
decision_tree_model<-function(data,colName,divRatio){
  dividedData<-divide_data_test_train(data, divRatio)
  trainData<-dividedData[1]
  testData<-dividedData[2]

  modelTree<-tree(data[colName]~.,data = trainData)

  return(modelTree)
}
