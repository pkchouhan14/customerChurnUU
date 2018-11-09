#' @title Customer Churn data analysis
#'
#' @param x
#'
#' @return confusion matrix of the model \code{\link{print}}
#'
#' @export
#'
#' @examples
#' hello("Akul")
#' \dontrun{
#' hello("Me")
#' }
library(stats)
library(caTools)
library(Amelia)
library(plyr)
library(dplyr) # to analyse the data
library(tidyr)  #to tidy the data
library(caret)  #for revalue function
library(tree)  #decision tree
library(MASS)
library(randomForest)
library(ggplot2)
library(gridExtra)
library(ROCR)
library(corrplot)


csv = system.file("extdata", "Telco_Customer_Churn.csv", package = "customerChurnUU")

look_data <- function(csv) {
 telecomDataFrame<-sample_read(csv)

 #number of columns
 ncol(telecomDataFrame)

 #number of rows records
 nrow(telecomDataFrame)

 #names of the columns in dataframe
 names(telecomDataFrame)

 # print the structure of the dataframe
 print(str(telecomDataFrame))

 # print the summary of the dataframe
 summary(telecomDataFrame)

 #data types - display on few columns to the console not crashing the window
 glimpse(telecomDataFrame)
}

