install.packages('class')
trainX = train_set[,-16]
testX = test_set[,-16]
trainY = train_set$Sold
testY = test_set$Sold

#standardize the variables
k=3
trainX_s = scale[trainX]
testX_s = scale[testX]
set.seed(0)
knn.pred = knn(trainX_s, testX_s, k=k)
table(knn.pred, testY)


