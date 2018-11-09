#' Data Summary for Numeric Columns
#'
#' Custom summaries of numeric data in a provided data frame
#' @author Pushpinder Kaur Chouhan <p.chouhan@ulster.ac.uk>
#' @param x A data.frame containing at least one numeric column
#' @param na.rm A logical indicating whether missing values should be removed
#' @import dplyr
#' @import purrr
#' @importFrom tidyr gather
#' @export
#' @examples
#' data_summary(iris)
#' data_summary(airquality, na.rm = FALSE)
#'
#'
#' #'
## Update the details for the return value
#' @return This function returns a \code{data.frame} including columns:
#' \itemize{
#'  \item ID
#'  \item min
#'  \item median
#'  \item sd
#'  \item max
#' }
#'

## Add in the author of the `data_summary()` function
## List the `summary()` function (from the `base` package)
#' @seealso \link[base]{summary}
data_summary <- function(x, na.rm = TRUE){

  num_data <- select_if(x, .predicate = is.numeric)

  map_df(num_data, .f = numeric_summary, na.rm = na.rm, .id = "ID")

}
