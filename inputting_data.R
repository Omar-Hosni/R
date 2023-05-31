#inputting data part1

#list all datasets that exist in R
data()

#another way
library(help = "datasets")

? iris

#to see the structure of the dataset
str(iris)

#to see the data
iris

#load dataset into the workspace
data("iris")

#inputting data part2, manually entering data
x <- 1:10
x2 <- c(2,5,6,3)
x3 <- seq(5, 50, by=5)
x4 <- scan() #input data from console


#inputting data part3, reading from text file or csv

#file
filedata <- read.table("C:/Program Files/R/Data/data.txt", header=TRUE, sep="\t")
str(filedata)


#csv
filedata2 <- read.csv("C:/Program Files/R/Data/data.csv", header=TRUE)
View(filedata2)



