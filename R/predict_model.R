#' Title
#'
#' @param model
#' @param data test data from whole data
#' @param intype type of prediction "class", "response"
#'
#' @return
#' @export
#'
#' @examples
predict_model<-function(model,data,intype){
  pred<-predict(model,newdata = data, type = intype)
  return(pred)
}
