df = read.csv("Movie_classification.csv")
View(df)

summary(df)
df$Time_taken[is.na(df$Time_taken)] <- mean(df$Time_taken, na.rm=TRUE)

install.packages('caTools')
library(caTools)
set.seed(0)
split = sample.split(movie, SplitRatio = 0.8)
trainc = subset(df, split==TRUE)
testc = subset(df, split==FALSE)

install.packages('rpart')
install.packages('rpart.plot')
library(rpart)
library(rpart.plot)

classtree <- rpart(formula = Start_Tech_Oscar~., data=trainc, method='class', control=rpart.control(maxdepth=3)
rpart.plot(classtree, box.palette='RdBu', digits=-3)
testc$pred <- predict(classtree, testc, type='class')
table(testc$Start_Tech_Oscar, testc$pred)





