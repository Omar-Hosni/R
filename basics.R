#printing
print('hello world')

#assignment
x <- 10
x = 32

#intervals
y <- c(1,2,3,4)
print(y)

z <- 10:20
print(z)

#assignment
x <- y <- 1:10

#operators
sum <- x+y
print(sum)

prod <- x*y
print(prod)

#list all values of current workspace
ls()

#ways to remove value from workspace
rm(y) 
remove(z) 

#to clear all values from workspace
rm(list = ls())

