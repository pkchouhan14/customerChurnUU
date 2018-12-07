#' Title To split the dataset into training and test
#'
#' @param data data frame
#' @param divRatio value for divinding the data into train and test
#'
#' @return list of train and test datasets
#' @export
#'
#' @examples
#' nobleGasses <- data.frame(Gas=c("Helium","Neon", "Argon", "Krypton", "Xenon", "Radon", "Oganesson"),
#' Symbol=c("He","Ne","Ae","Kr","Xe","Rn","Og"), Nr=c(2,10,18,36,54,86,118),
#' Mass=c(4.003,20.18,39.948,83.8,131.293,222,294))
#' divide_data_test_train(nobleGasses,75) # return list of 2 train and test dataframe
divide_data_test_train<-function(data, divRatio){
  smp_siz = floor((divRatio/100)*nrow(data)) #creates a value for dividing the data into train and test. In this case the value is defined as 75% of the number of rows in the dataset

  set.seed(123)   # set seed to ensure you always have same random numbers generated

  train_ind = sample(seq_len(nrow(data)),size = smp_siz) # Randomly identifies therows equal to sample size ( defined in previous instruction) from  all the rows of Smarket dataset and stores the row number in train_ind

  trainData <- data[train_ind,] #creates the training dataset with row numbers stored in train_ind

  testData <- data[-train_ind,] # creates the test dataset excluding the row numbers mentioned in train_ind

  dividedData<- list("train"=trainData, "test"=testData)

  return(dividedData)
}

