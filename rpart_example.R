#first, load libraries
library(rpart)
library(rpart.plot)
library(rattle)
library(RColorBrewer)
#we use the ptitanic dataset as example
data("ptitanic")
#we can see the classe of each variable with
lapply(ptitanic, class)
#now, we considerate the survived factor as main class

ptitanicTree <- rpart(survived~., data=ptitanic) # . = all other variables
plot(ptitanicTree) #plot a classic tree
text(ptitanicTree, use.n=T) #add basic informations on it

prp(ptitanicTree, extra=2) #better tree with more informations

fancyRpartPlot(ptitanicTree, main = "",sub = "") #fancy way to plot

ptitanicTree #info about the tree construction

plot(ptitanic$survived~ptitanic$age) #better visualisation of data

