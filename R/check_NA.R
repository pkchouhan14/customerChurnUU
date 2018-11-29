
#' Title count NA in a data column
#'
#' @param data dataframe
#' @param colName column name
#'
#' @return number of NA's in the column
#' @export
#'
#' @examples
#' check_NA(sample_read(),"TotalCharges")
check_NA = function(data,colName){

# check for the NA values
any(is.na(data))

# count how many NA values
countNA <- sum(is.na(data[,colName]))

#if(countNA>0){
 # # relatively small in number then ignore those rows from the analysis
#  dataFrame <- na.omit(dataFrame)
#}
return(countNA)
}

