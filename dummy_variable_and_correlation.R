#dummy variables
#change non numerical & numerical variables into dummy variables
#you need it if the data is classified into none or more one type of more
#only if u care if the data exists or not
intsall.packages("dummies")
df <- dummy.data.frame(df)
df <- df[,-9]
df <- df[,-14]


#corelation matrix
cor(df)
round(cor(df),2)

