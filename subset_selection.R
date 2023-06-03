#subset selections
install.packages("leaps")
lm_best = regsubsets(price~., data=df, nvmax=15) #will go up to 15 variables
summary(lm_best)
summary(lm_best)$adjr2 #adjusted r^2
which.max(summary(lm_best)$adjr2)
coef(lm_best, 8)

lm_forward = regsubsets(price~., data=df, nvmax=15, method="forward")
summary(lm_forward)
