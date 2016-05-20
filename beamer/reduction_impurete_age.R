library(rpart)
library(rpart.plot)
data(ptitanic)
dt = rpart(survived~pclass+sex+age+sibsp+parch, data=ptitanic)
text(dt, use.n=T)
plot(dt)
text(dt)
n = length(ptitanic$survived)
indL=which(ptitanic$age>=9.5)
indR=which(ptitanic$age<9.5)
calcul_impurete=function(x){
  probas=table(x)/length(x)
  impurete=sum(probas*(1-probas))
  return(impurete)
}
prL=length(indL)/n
prR=length(indR)/n
IL=calcul_impurete(ptitanic$survived[indL])
IR=calcul_impurete(ptitanic$survived[indR])
prA=1
IA=calcul_impurete(ptitanic$survived)
perte_impurete=prA*IA-prL*IL-prR*IR
>print(perte_impurete)
[1] 0.0915799
