# Criando uma lista de pa�ses e seus respectivos IDH's
dados <- data.frame(Paises = c("Brasil", "Alemanha", "Franca", "Portugal", "Noruega"), IDH = c(0.920, 0.825, 0.735, 0.665, 0.590))
dados

# Fun��o para identificar o status do IDH
dados$Nivel <- 0
for(i in 1:9){
  ifelse(dados[i, 2] <= 0.534, dados[i,3] <- "Baixo",
         ifelse(dados[i,2] <= 0.710, dados[i,3] <- "M�dio",
                ifelse(dados[i,2] <= 0.796,
                       dados[i,3] <- "Elevado", dados[i,3] <- "Muito elevado")))
  }