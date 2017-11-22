library(dplyr)

knn <- function(train, test, n1=nrow(train), n2=nrow(test), k=1) {
   ## prepare data for knn
   train <- train %>% sample_n(n1)
                           # take a subsample.  Note: order not preserved but
                           # the original row number kept as row name
   test <- test %>% sample_n(n2)
   trainPixels <- train %>% select(-label)
   testPixels <- test %>% select(-label)
   trainLabels <- train$label
   testLabels <- test$label
   ##
   predLabels <- FNN::knn(trainPixels, testPixels, trainLabels, k=k)
   data.frame(i=row.names(test),
                           # original row number for the test data
              true=testLabels, predicted=predLabels)
}
