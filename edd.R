df <- read.csv("D:/Projects/Machine Learning & Deep Learning in Python & R/Data Files/1. ST Academy - Crash course and Regression files/House_Price.csv")
str(df)
summary(df)
hist(df$crime_rate)
pairs(~price+crime_rate+n_hot_rooms+rainfall, data=df)
barplot(table(df$airport))
barplot(table(df$waterbody))


