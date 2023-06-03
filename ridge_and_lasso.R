#ridge and lasso
x = model.matrix(price~., data=df)[,]
y = df$price
grid = 10^seq(10, -2, length = 100)
lm_ridge = glmnet(x,y,alpha=0, lambda=grid)
summary(lm_ridge)
cv_fit = cv.glmnet(x,y,alpha=0, lambda=grid)
plot(cv_fit)

opt_lambda = cv_fit$lambda.min
tss = sum((y-mean(y))^2)

y_a = predict(lm_ridge, s=opt_lambda, newx=x)
rss = sum((y_a-y)^2)
rsq = 1-rss/tss
lm_lasso = glmnet(x,y, alpha=0, lambda=grid)

