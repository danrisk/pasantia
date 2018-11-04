RALEA <- function(ActLiqAj, PasVenInm){
  RALEA7 <- sum(ActLiqAj[1:7])/sum(PasVenInm[1:7])*100
  RALEA15 <- sum(ActLiqAj[8:15])/sum(PasVenInm[8:15])*100
  RALEA30 <- sum(ActLiqAj[16:30])/sum(PasVenInm[16:30])*100
  RALEA60 <- sum(ActLiqAj[31:60])/sum(PasVenInm[31:60])*100
  RALEA90 <- sum(ActLiqAj[61:90])/sum(PasVenInm[61:90])*100
  
  L <- cbind(RALEA7, RALEA15, RALEA30, RALEA60, RALEA90)
  
  return(L)

}