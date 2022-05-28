library(readxl) #bib p/ leitura de dados excel

#a
dados <- read_excel("C:/Users/leand/OneDrive/Área de Trabalho/Programming/Exercicios R/nacIII.xlsx") #Precisa alterar esse caminho

plot(y = dados$`Gasto com Alimentação`, x = dados$`Renda Familiar`,
     main = "Relação de 'Renda familiar' e 'Gastos com alimentação'",
     ylab = "Gastos com Alimentação",
     xlab = "Renda Familiar",
     pch = 16,
     col = "red")

#b
cor(dados$`Renda Familiar`, dados$`Gasto com Alimentação`) # Correlação associativa alta com relação direta

#c
regrassao = lm(`Gasto com Alimentação` ~ `Renda Familiar`, data = dados)
regrassao # Funçao para calcular os valor de 'a' e 'b'
abline(a = 2.6574, b = 0.3229) # Grafico de dispersao com regressao linear