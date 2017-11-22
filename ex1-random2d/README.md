# kNN with Random Data

Use this exercise to explore the behavior of kNN with aritificial
data.  The included file _DGP.R_ includes a function that creates
suitable data.  You also need a kNN package, such as _FNN_.

Proceed as follows:

1. load the file _DGP.R_ and read the documentation (in comments) for
   `createRandomData`.  Create a small amount of data (such as 10
   observations) and ensure you understand that _x_ and _y_ are
   features and _labels_ are labels.
   
2. visualize the data.  You may use _ggplot_ and depict the label by
   different color or point shape as a function of _x_ and _y_.
   
3. Now create two sets (data.frames) of random data: one for training
   and one for predicting.  The training dataset might be of size
   ~1000, the other may be similar.
   
4. extract the features and labels.  from your testing and and
   predicting sets.  You may do something like:
```r
trainFeatures <- trainData %>% select(x,y)
trainLabels <- trainData$labels
```

5. Become familiar with the syntax of `FNN::knn`.  Briefly, you need:
```
FNN::knn(train, predict, labels, k)
```
where `train` and `predict` are the corresponding features, and
`labels` are the labels for the training set.  `k` is $k$.

6. predict the labels for your predicting set with kNN.  Use $k=1$.
   Compare these with the true labels.  What percentage did you get
   right? 
   
7. Repeat the exercise with different $k$ values.  Which $k$ value
   gives you the best precision?
