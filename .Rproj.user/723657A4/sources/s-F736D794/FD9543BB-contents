TVaRL <- function(p, data, dist){
  z <- rendiAjusDist(data)
  y <- switch(dist, 
         "Normal" = esnormal(p, as.numeric(z$fit.list$Normal$estimate[1]),as.numeric(z$fit.list$Normal$estimate[2])),
         "Exponential" = esexponential(p, as.numeric(z$fit.list$Exponential$estimate[1])),
         "Cauchy"    = esCauchy(p, as.numeric(z$fit.list$Cauchy$estimate[1]),as.numeric(z$fit.list$Cauchy$estimate[2])),
         "Logistic"  = eslogistic(p, as.numeric(z$fit.list$Logistic$estimate[1]),as.numeric(z$fit.list$Logistic$estimate[2])),
         # "Beta"      =c(VARINBET_TEXT,
         #                NULL,
         #                VARTINBET_TEXT,
         #                NULL ),
         # "Chi-square"=c(VARINCHC_TEXT,
         #                NULL,
         #                VARTINCHC_TEXT,
         #                NULL),
         "Uniform"   =esuniform(p, as.numeric(z$fit.list$Uniform$estimate[1]), as.numeric(z$fit.list$Uniform$estimate[2])),
         "Gamma"     =esGamma(p, as.numeric(z$fit.list$Gamma$estimate[1]), as.numeric(z$fit.list$Gamma$estimate[2])),
         "Lognormal" =eslognorm(p, as.numeric(z$fit.list$Lognormal$estimate[1]), as.numeric(z$fit.list$Lognormal$estimate[2])),
         "Weibull"   =esWeibull(p, as.numeric(z$fit.list$Weibull$estimate[1]),as.numeric(z$fit.list$Weibull$estimate[2])),
         "F"         =esF(p, as.numeric(z$fit.list$F$estimate[1]), as.numeric(z$fit.list$F$estimate[2])),
         "Student"   =esT(p, as.numeric(z$fit.list$Student$estimate[1]))
         # "Gompertz"  =c(VARINGOM_TEXT,
         #                NULL,
         #                VARTINGOM_TEXT,
         #                NULL)
  )
  return(y)
}