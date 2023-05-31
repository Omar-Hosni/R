#csv
filedata2 <- read.csv("C:/Program Files/R/Data/data.csv", header=TRUE)
View(filedata2)


y<- table(filedata2$Region) #y will store unique values in column 'Region'
View(y)
barplot(y) #plots bars that represents the data
barplot(y[order(y)]) #for ascending
barplot(y[order(-y)]) #for descending

#for horizontal bars and give each column a color, and remove border and add title
barplot(y[order(y)], horiz = TRUE, col = c("red","green","blue","beige"), border=NA, main='title name')

#to label axis
barplot(y[order(y)], xlab="x label", ylab="y label")

#export the barplot into an image
png(filename = "C:/Program Files/R/Data/data_presentation.png", width=888, height= 750)
barplot(y[order(y)], horiz = TRUE, col = c("red","green","blue","beige"), border=NA, main='title name')
dev.off()

hist(filename$Region)
hist(filename&Region, breaks= 5) #n intervals
hist(Region$Age, breaks= c(0,40,60,100), freq=TRUE) #specific intervales


