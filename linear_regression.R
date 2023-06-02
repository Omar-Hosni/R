df <- read.csv("D:/Projects/Machine Learning & Deep Learning in Python & R/Data Files/1. ST Academy - Crash course and Regression files/House_Price.csv")

simple_model <- lm(price~room_num, data=df)
summary(simple_model)
plot(df$room_num, df$price)
abline(simple_model)


