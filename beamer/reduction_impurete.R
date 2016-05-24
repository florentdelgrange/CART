IA = I(ptitanic$survived) # impurete principale
n = length(ptitanic$survived)
indL = which(ptitanic$sex=="male")
indR = which(ptitanic$sex=="female")
pL = length(indL)/n
pR = length(indR)/n
IL = I(ptitanic$survived[indL])
IR = I(ptitanic$survived[indR])
pA =1
perte_impurete = pA*IA-pL*IL-pR*IR

> print(perte_impurete)
[1] 0.1319704
