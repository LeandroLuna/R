# EXEMPLO 7
dados <- data.frame(a = c(1, -6, 8), b= c(2,-4,5), c= c(1,-4,8), d= c(-1,8,-17), e= c(-1,12,20), f= c(-1,6,-5), g= c(4, -4, 1))

raizes <- function(a, b, c){
  
  delta <- b^2-4*a*c
  
  if(delta > 0){ # Se o delta for maior que zero, a equação terá dois valores reais e distintos. 
    cat("As raizes são: Raiz 1 = ", (-b+delta)/2*a, "|| Raiz 2 = ", (-b-delta)/2*a, "\n")
  }
  else if(delta == 0){ # Se o delta for igual a zero, a equação terá:  
    if((-b+delta)/2*a == (-b-delta)/2*a){ # Dois resultados iguais;
      cat("A função tem raizes iguais! (Raiz 1 =", (-b+delta)/2*a, "|| Raiz 2 =", (-b-delta)/2*a, sep="", ")\n")
      }
    else{ # ou somente um valor real.
      cat("A função tem uma raiz real e uma complexa = ", (-b+delta)/2*a, (-b-delta)/2*a, "\n")
    }
  }
  else{ # Se o delta for menor que zero, a equação não possuirá valores reais. 
    cat("Delta < 0 = A função tem raizes complexas! ", "\n")
  }
}

for (i in 1:8){
  cat("Para a letra ", names(dados)[i], sep="", ") temos: ")
  raizes(dados[1, i], dados[2, i], dados[3, i])
}