library(rpart)
library(rpart.plot)

data("ptitanic")
tree <- rpart(survived ~ age + sex, data=ptitanic)

plot(tree)
text(tree, use.n=T)