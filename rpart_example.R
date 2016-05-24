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

ptitanicTree$cptable #info about optimal tree

ptitanicTree <- rpart(survived~.,data=ptitanic,control=rpart.control(minsplit=5,cp=0)) #Allows to separate nodes that have min 5 observations in them (20 is default), cp forces a separation to improve class quality by a percentage 

