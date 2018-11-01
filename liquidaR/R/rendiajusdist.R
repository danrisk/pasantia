rendiAjusDist <- function(x){
  y <- useFitdist(diff(log(x)), show.output = FALSE)
  return(y)
}