#' Title processed the read data by implementing all needed function
#'
#' @param data dataframe read
#'
#' @return processed/clean data
#' @export
#'
#' @examples
#'
processed_data<-function(data){
  # The value of the following columns affecting the model and introducing the NA value for "No phone service" and  and "No internet service" need to cleanup the data for these columns MultipleLine,OnlineSecurity,OnlineBackup,DeviceProtection,TechSupport,StreamingTV,StreamingMovies
  data$MultipleLines <- as.character(data$MultipleLines)
  data$OnlineSecurity <- as.character(data$OnlineSecurity)
  data$OnlineBackup <- as.character(data$OnlineBackup)
  data$DeviceProtection <- as.character(data$DeviceProtection)
  data$TechSupport <- as.character(data$TechSupport)
  data$StreamingTV <- as.character(data$StreamingTV)
  data$StreamingMovies <- as.character(data$StreamingMovies)

  # convert factor variables into character variables before changing the values
  data$MultipleLines[data$MultipleLines=="No phone service"] <- "No"
  data$OnlineSecurity[data$OnlineSecurity=="No internet service"] <- "No"
  data$OnlineBackup[data$OnlineBackup=="No internet service"] <- "No"
  data$DeviceProtection[data$DeviceProtection=="No internet service"] <- "No"
  data$TechSupport[data$TechSupport=="No internet service"] <- "No"
  data$StreamingTV[data$StreamingTV=="No internet service"] <- "No"
  data$StreamingMovies[data$StreamingMovies=="No internet service"] <- "No"

  # converting character variables into factor variables
  data$MultipleLines <- as.factor(data$MultipleLines)
  data$OnlineSecurity <- as.factor(data$OnlineSecurity)
  data$OnlineBackup <- as.factor(data$OnlineBackup)
  data$DeviceProtection <- as.factor(data$DeviceProtection)
  data$TechSupport <- as.factor(data$TechSupport)
  data$StreamingTV <- as.factor(data$StreamingTV)
  data$StreamingMovies <- as.factor(data$StreamingMovies)

  #data$customerID<-NULL
  # check the number of NA rows if it is relatively small in number then ignore those rows from the analysis
  new_data<-omit_na(convert_data_variable(data))

  return(new_data);
}
