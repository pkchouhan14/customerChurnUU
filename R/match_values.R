match_values<-function(data,colName,valOne){
  stdVal<-column_std(data,colName)
  if(round(stdVal)==valOne)
    return(TRUE)
}
