glm.fit = glm(Sold~., data=df, family=bionomial)
summary(glm.fit)
glm.probs = predict(glm.fit, type="response")
glm.probs[1:10]
glm.pred = rep("NO",506)
glm.pred[glm:probs>0.5] = "YES"
table(glm.pred, df$Sold)


