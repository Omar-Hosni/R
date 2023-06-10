install.packages('adabag')
library(adabag);

trainc$Start_Tech_Oscar1 <- as.factor(trainc$Start_Tech_Oscar)
adaboost <- boosting(Start_Tech_Oscar1~. -Start_Tech_Oscar, data=trainc, boos=TRUE)
pred_ada <- predict(adaboost.testc)

table(pred_ada$class, testc$Start_Tech_Oscar)
table(pred_ada$class, testc$Start_Tech_Oscar)

t1 <- adaboost$trees[[1]]
plot(t1)
text(t1.pretty=100)
