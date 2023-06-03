df <- read.csv("D:/Projects/Machine Learning & Deep Learning in Python & R/Data Files/1. ST Academy - Crash course and Regression files/House_Price.csv")

simple_model <- lm(price~room_num, data=df)
summary(simple_model)
plot(df$room_num, df$price)
abline(simple_model)

multiple_model <- lm(price~., data=df)
summary(multiple_model)

#train test split
install.packages("caTools")
set.seed(0)
split = sample.split(df, splitRation=0.8)
training_set= subset(df, split==TRUE)
test_set =  subset(df, split == FLASE)

lm_a = lm(price~., data=training_set)

train_a = predict(lm_a, training_set)
test_a = predict(lm_a, test_set)

mean((training_set$price~train_a)^2)
mean((test_set$price~train_a)^2)
