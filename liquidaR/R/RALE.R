RALE <- function(ActLiq, PasVenInm){
  RALE7 <- sum(ActLiq[1:7])/sum(PasVenInm[1:7])*100
  RALE15 <- sum(ActLiq[8:15])/sum(PasVenInm[8:15])*100
  RALE30 <- sum(ActLiq[16:30])/sum(PasVenInm[16:30])*100
  RALE60 <- sum(ActLiq[31:60])/sum(PasVenInm[31:60])*100
  RALE90 <- sum(ActLiq[61:90])/sum(PasVenInm[61:90])*100
  
  L <- cbind(RALE7, RALE15, RALE30, RALE60, RALE90)
  
  return(L)
  
}