n=length(ptitanic$survived)
ndL=which(ptitanic$sex=="male")
indR=which(ptitanic$sex=="female")
pL=length(indL)/n
pR=length(indR)/n
IL=I(ptitanic$survived[indL])
IR=I(ptitanic$survived[indR])
pA=1
IA=calcul_impurete(ptitanic$survived)
perte_impurete=pA*IA-pL*IL-pR*IR

> print(perte_impurete)
[1] 0.1319704
