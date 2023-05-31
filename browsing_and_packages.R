#browsing
url <- 'http://crantastic.org'
browseURL(url)

#to let others know you installed a certain package
install.packages("LiblineaR")

#to see all packages installed
library()

#to see currently loaded packages
search()

#to load a package which is installed
require("LiblineaR")

#to unload a package
detach("package:LiblineaR", unload=TRUE)

#uninstall the packages
remove.packages("LiblineaR")

#more info about the package
? ggplot2
