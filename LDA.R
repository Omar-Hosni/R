lda_fit = lda(Sold~., data=df)
lda.pred = predict(lda.fit, df)
lda.pred$posterios
lda.class = lda.pred$class
table(lda.class, df$Sold)
sum(lda.pred$posterior[,1]>0.8)
