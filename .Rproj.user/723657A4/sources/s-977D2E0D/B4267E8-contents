AgregadoVaR <- function(dataDisc, dataRet, distRet){
  
  pardiscreto <- as.numeric(mean(dataDisc))
  z <- rendiAjusDist(dataRet)
  parRetiros <- c(as.numeric(z$fit.list$distRet$estimate[1]), as.numeric(z$fit.list$distRet$estimate[2]))
  mediaRetiros <- mnorm(1, parRetiros[1], parRetiros[2])
  varRetiros <- mnorm(2, parRetiros[1], parRetiros[2])-mediaRetiros^2
  AsimRetiros <- (mnorm(3, parRetiros[1], parRetiros[2])-3*mediaRetiros*varRetiros-mediaRetiros^3)/varRetiros^(3/2)
  medDiscreto <- varDiscreto <- pardiscreto
  AsiDiscreto <- 1/sqrt(pardiscreto)
  MedAgregado <- medDiscreto*mediaRetiros
  VarAgregado <- varDiscreto*(varRetiros + mediaRetiros^2)
  AsiAgregado <- (AsiDiscreto*varDiscreto^(3/2)*mediaRetiros^3+ 3*varDiscreto*mediaRetiros*varRetiros+medDiscreto*AsimRetiros*varRetiros^(3/2))/VarAgregado^(3/2)
  Fs.s <- aggregateDist("simulation", model.freq = expression(y=rpois(mean(dataDisc))), model.sev = expression(y=rnorm(parRetiros[1], parRetiros[2])), nb=1000)
  VaR(Fs.s)

}
