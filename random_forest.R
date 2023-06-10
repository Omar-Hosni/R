
install.packages('randomForest')
library(randomForest)

randomFor <- randomForest(Collection~., data=train, ntree=500)
test$random <- predict(randomFor, test)
MSE2random <- mean((test$random-test$Collection)^2)
