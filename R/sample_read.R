#' Title Read data file (csv) from directory by the user
#'
#' @return dataframe
#' @export
#'
#' @examples
#' sample_read()
sample_read = function(){
  dataToWork<-read.csv(file="C:\\Users\\Pushpinder\\BTIIC\\Code\\customerChurnUU\\Data\\git-Customer-Churn.csv")

  #read_data<-function(dir,fl){
  #choose from pop-up directory window
  #dataToWork<-read.csv(file.choose(), strip.white = T, stringsAsFactors = F)	# use a windows file explorer to select a file
  #use direcoturt path dir and file namefl as input to the function
  #fl.qualified <- paste(dir, fl, sep='\\')
  #dataToWork <- lapply(fl.qualified, read.csv)

  return(dataToWork);
}
