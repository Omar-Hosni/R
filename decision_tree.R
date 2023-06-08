movie <- read.csv("Movie_regression.csv")
view(movie)

#data processing, missing value treatement
summary(movie)
movie$Time_taken(is.na(movie$Time_taken)] <- mean(movie$Time_taken, na.rm=TRUE)

#Test-Train split
install.packages('caTools')
library(caTools)
set.seed(0)
split = sample.split(movie, SplitRatio=0.8)
train = subset(movie, split==TRUE)
test = subset(movie, split==FALSE)

install.packages('rpart')
install.packages('rpart.plot')
reg_tree <- rpart(formula = Collection~., data=train, control=rpart.control(maxdepth=3))
rpart.plot(reg_tree, box.palette='RdBu', digits=-3)
test$pred <- predict(regtree, test, type='vector')
MSE2<- mean((test$pred - test$Collection)^2)

#create full tree and prune
fulltree <- rpart(formula = Collection~., data=train, control = rpart.control(cp=0))
rpart.plot(fulltree, box.palette="RdBu", digits = -3)
printcp(fulltree)
plotcp(fulltree)

mincp <- regtree$cptable[which.min(regtree$cptable[,"xerror"]), "CP"]

prunedtree <- prune(fulltree, cp=mincp)
rpart.plot(prunedtree, box.palette="RdBu", digits=-3)

test$fulltree <- predict(fulltree, test, type="vector")
MSE2 <- mean((test$fulltree - test$Collection)^2)

test$pruned <- predict(prunedtree, test, type="vector")
MSE2$pruned <- mean((test$pruned - test$Collection)^2)

                 
                 
                 
                 
                 
