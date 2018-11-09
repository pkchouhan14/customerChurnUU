
check_NA = function(dataFrame){

# check for the NA values
any(is.na(dataFrame))

# count how many NA values
countNA <- sum(is.na(dataFrame))

if(countNA>0){
  # relatively small in number then ignore those rows from the analysis
  dataFrame <- na.omit(dataFrame)
}
}
