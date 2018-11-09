#' Use a map function to find which columns are numeric, the type of each column, and a summary of each column.
#'
#' @param data A data frame or matrix
#'
#' @import purrr
#'
#' @return Vector of colun type
#' @export
#'
#' @examples col_type(airquality)
#'

col_type <- function(df){


# Find the columns that are numeric
map_lgl(df, is.numeric)

# Find the type of each column
col_type <- c(length(df))
col_type<-map_chr(df, typeof)

# Find a summary of each column
map(df, summary)

}
