#missing value imputation
mean(df$n_hos_beds)
mean(df$n_hos_beds, na.rm = TRUE) #while calculating the mean, remove the NA from it
which(is.na(df$n_hos_beds)) #gets values that are NA
df$n_hos_beds[is.na(df$n_hos_beds)] <- mean(df$n_hos_beds, na.rm=TRUE)

summary(df$n_hos_beds)
which(is.na(df$n_hos_beds))
