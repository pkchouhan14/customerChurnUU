#' Title relatively small in number then ignore those rows from the analysis
#'
#' @param data dataframe
#'
#' @return new data without NA
#' @export
#'
#' @examples
#' omit_na(sample_read())
omit_na<-function(data){
  # relatively small in number then ignore those rows from the analysis
  new_data <- na.omit(data)
  #new_data <- within(sample_read(), TotalCharges[tenure==0] <- MonthlyCharges)
  return(new_data)
}
