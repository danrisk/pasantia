VaRL <- function(p, data, dist){
  z <- rendiAjusDist(data)
  y <- switch(dist, 
         "Normal" = varnormal(p, mu= as.numeric(z$fit.list$Normal$estimate[1]), sigma = as.numeric(z$fit.list$Normal$estimate[2])),
         "Exponential" = varexponential(p, as.numeric(z$fit.list$Exponential$estimate[1])),
         "Cauchy"    = varCauchy(p, as.numeric(z$fit.list$Cauchy$estimate[1]),as.numeric(z$fit.list$Cauchy$estimate[2])),
         "Logistic"  = varlogistic(p, as.numeric(z$fit.list$Logistic$estimate[1]),as.numeric(z$fit.list$Logistic$estimate[2])),
         # "Beta"      =c(VARINBET_TEXT,
         #                NULL,
         #                VARTINBET_TEXT,
         #                NULL ),
         # "Chi-square"=c(VARINCHC_TEXT,
         #                NULL,
         #                VARTINCHC_TEXT,
         #                NULL),
         "Uniform"   =varuniform(p, as.numeric(z$fit.list$Uniform$estimate[1]), as.numeric(z$fit.list$Uniform$estimate[2])),
        "Gamma"     =varGamma(p, as.numeric(z$fit.list$Gamma$estimate[1]), as.numeric(z$fit.list$Gamma$estimate[2])),
         "Lognormal" =varlognorm(p, as.numeric(z$fit.list$Lognormal$estimate[1]), as.numeric(z$fit.list$Lognormal$estimate[2])),
         "Weibull"   =varWeibull(p, as.numeric(z$fit.list$Weibull$estimate[1]),as.numeric(z$fit.list$Weibull$estimate[2])),
         "F"         =varF(p, as.numeric(z$fit.list$F$estimate[1]), as.numeric(z$fit.list$F$estimate[2])),
         "Student"   =varT(p, as.numeric(z$fit.list$Student$estimate[1]))
         # "Gompertz"  =c(VARINGOM_TEXT,
         #                NULL,
         #                VARTINGOM_TEXT,
         #                NULL)
  )
    return(y)
}