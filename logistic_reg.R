#single predictor
glm.fit = glm(Sold~.price, data=df, family=binmoial)
summary(glm.fit)

#multiple predictor
glm.fit = glm(Sold~., data=df, family=binmoial)
summary(glm.fit)
