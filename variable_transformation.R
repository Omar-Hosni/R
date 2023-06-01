df <- read.csv("D:/Projects/Machine Learning & Deep Learning in Python & R/Data Files/1. ST Academy - Crash course and Regression files/House_Price.csv")

#variable transformation
pairs(~price+crime_rate, data=df)
plot(df$price, df$crime_rate)

df$crime_rate=log(1+df$crime_rate)
df$avg_dist = (df$fist1+df$dist2+df$dist3+df$dist4)/4

df2 <- df[,-7:-10]
df <- df2
rm(df2)

df <- df[,-14]
