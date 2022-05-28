# EXEMPLO 6
dados <- data.frame(a = c(2, 5, 1), b= c(4,2,2), c= c(2,3,1), d= c(1,5,1), e= c(2,5,5), f= c(2,2,2))

area_trapezio <- function(B, b, h){
  A <- ((B+b)/2)*h
  return (A)
}


for (i in 1:6){
  x <- area_trapezio(dados[1, i], dados[2, i], dados[3, i])
  cat("A �rea do trap�zio ", names(dados)[i], sep="", ") � ", x, "\n")
}