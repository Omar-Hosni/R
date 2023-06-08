movie <- read.csv("Movie_regression.csv")
view(movie)

#data processing, missing value treatement
summary(movie)
movie$Time_taken(is.na(movie$Time_taken)] <- mean(movie$Time_taken, na.rm=TRUE)
