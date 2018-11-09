
#' Read csv duplicate
#'
#' @param path path of filename
#'
#' @return a \code{tibble}
#' @export
#'
#' @importFrom readr read_csv
#' @examples
#' csv = system.file("extdata", "Telco_Customer_Churn.csv", package = "customerChurnUU")
#' sample_read(csv)
sample_read = function(path){
  readr::read_csv(path)
  #return(telecomDataframe)
}
