install.packages('xgboost')
library(xgboost)
trainY = trainc$Start_Tech_Oscar = '1'
trainX <- model.matrix(Start_Tech_Oscar ~.-1, data=trainc)
testY =testc$Start_Tech_Oscar=='1'
testX <- model.matrix(Start_Tech_Oscar~.-1, data=testc)

X_matrix <- xgb.DMatrix(data=trainX, label=trainY)
X_matrix_t <- xgb.DMatrix(data=testX, label=testY)
