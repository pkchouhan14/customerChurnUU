#' Title Convert Variables format
#'
#' @param data dataframe read
#'
#' @return processed data
#' @export
#'
#' @examples
#'
convert_data_variable<-function(data){
###############Convert Variables format #####
#library(plyr)
data$gender <- revalue(data$gender, c("Male"=1))
data$gender <- revalue(data$gender, c("Female"=0))

data$Churn <- revalue(data$Churn, c("Yes"=1))
data$Churn <- revalue(data$Churn, c("No"=0))

data$Partner <- revalue(data$Partner, c("Yes"=1))
data$Partner <- revalue(data$Partner, c("No"=0))

data$Dependents <- revalue(data$Dependents, c("Yes"=1))
data$Dependents <- revalue(data$Dependents, c("No"=0))

data$PhoneService <- revalue(data$PhoneService, c("Yes"=1))
data$PhoneService <- revalue(data$PhoneService, c("No"=0))

data$OnlineBackup <- revalue(data$OnlineBackup, c("Yes"=1))
data$OnlineBackup <- revalue(data$OnlineBackup, c("No"=0))
#data$OnlineBackup <- revalue(data$OnlineBackup, c("No internet service"=2))

data$OnlineSecurity <- revalue(data$OnlineSecurity, c("Yes"=1))
data$OnlineSecurity <- revalue(data$OnlineSecurity, c("No"=0))
#data$OnlineSecurity <- revalue(data$OnlineSecurity, c("No internet service"=2))

data$DeviceProtection <- revalue(data$DeviceProtection, c("Yes"=1))
data$DeviceProtection <- revalue(data$DeviceProtection, c("No"=0))
#data$DeviceProtection <- revalue(data$DeviceProtection, c("No internet service"=2))

data$TechSupport <- revalue(data$TechSupport, c("Yes"=1))
data$TechSupport <- revalue(data$TechSupport, c("No"=0))
#data$TechSupport <- revalue(data$TechSupport, c("No internet service"=2))

data$StreamingMovies <- revalue(data$StreamingMovies, c("Yes"=1))
data$StreamingMovies <- revalue(data$StreamingMovies, c("No"=0))
#data$StreamingMovies <- revalue(data$StreamingMovies, c("No internet service"=2))

data$StreamingTV <- revalue(data$StreamingTV, c("Yes"=1))
data$StreamingTV <- revalue(data$StreamingTV, c("No"=0))
#data$StreamingTV <- revalue(data$StreamingTV, c("No internet service"=2))

data$PaperlessBilling <- revalue(data$PaperlessBilling, c("Yes"=1))
data$PaperlessBilling <- revalue(data$PaperlessBilling, c("No"=0))

data$MultipleLines <- revalue(data$MultipleLines, c("Yes"=1))
data$MultipleLines <- revalue(data$MultipleLines,  c("No"=0))
# data$MultipleLines <- revalue(data$MultipleLines,  c("No phone service"=2))

data$InternetService <- revalue(data$InternetService, c("DSL"=1))
data$InternetService <- revalue(data$InternetService,  c("No"=0))
data$InternetService <- revalue(data$InternetService,  c("Fiber optic"=2))

data$Contract <- revalue(data$Contract, c("One year"=1))
data$Contract <- revalue(data$Contract,  c("Month-to-month"=0))
data$Contract <- revalue(data$Contract,  c("Two year"=2))

data$PaymentMethod <- revalue(data$PaymentMethod, c("Bank transfer (automatic)"=1))
data$PaymentMethod <- revalue(data$PaymentMethod,  c("Mailed check"=0))
data$PaymentMethod <- revalue(data$PaymentMethod,  c("Credit card (automatic)"=2))
data$PaymentMethod <- revalue(data$PaymentMethod,  c("Electronic check"=3))

#############################################

return(data);
}
