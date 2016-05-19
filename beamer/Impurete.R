I = function(x) {
  p = table(x)/length(x)
  impurete = sum(p*(1-p))
  return(impurete)
}
