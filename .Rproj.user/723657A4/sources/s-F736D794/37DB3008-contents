GapLiq <- function(data, VaR){
  
  VaR7   <- data[length(data)]*VaR*sqrt(7)
  VaR15  <- data[length(data)]*VaR*sqrt(15)  - VaR7
  VaR30  <- data[length(data)]*VaR*sqrt(30)  - VaR15
  VaR60  <- data[length(data)]*VaR*sqrt(60)  - VaR30
  VaR90  <- data[length(data)]*VaR*sqrt(90)  - VaR60
  VaR180 <- data[length(data)]*VaR*sqrt(180) - VaR90
  VaR360 <- data[length(data)]*VaR*sqrt(360) - VaR180
  VaR720 <- data[length(data)]*VaR*sqrt(720) - VaR360
  
  cbind(VaR7, VaR15, VaR30, VaR60, VaR90, VaR180, VaR360, VaR720)
}