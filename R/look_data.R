#' @title view the uploaded dataset
#'
#' @param data dataframe to look at
#'
#' @return confusion matrix of the model \code{\link{print}}
#'
#' @export
#'
#' @examples

look_data <- function(data) {

 #number of columns
 ncol(data)

 #number of rows records
 nrow(data)

 #names of the columns in dataframe
 names(telecomDataFrame)

 # print the structure of the dataframe
 print(str(data))

 # print the summary of the dataframe
 summary(data)

 #data types - display on few columns to the console not crashing the window
 glimpse(data)
}

