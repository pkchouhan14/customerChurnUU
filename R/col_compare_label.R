#' Title
#'
#' @param data dataframe
#' @param colName name of the column needed to check rate in relation to labeled column
#' @param colLabel name of labeled column
#'
#' @return a titble based on given and labeled column
#' @export
#'
#' @examples
col_compare_label<-function(data,colName,colLabel){
#data %>% #mutate(Churn = case_when(Churn=="Yes" ~ 1, Churn == "No" ~ 0)) %>%
  select(data, unlist(data[colName]),unlist(data[colLabel])) %>%
  group_by(unlist(data[colName])) %>%
  count(unlist(data[colLabel])) %>%
  mutate(Rate = 100*round(n/sum(n),2)) # Senior citizens are indeed have a higher churn rate than younger customers.
}
