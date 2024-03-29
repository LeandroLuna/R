library(readxl) #bib p/ leitura de dados excel

#a
dados <- read_excel("C:/Users/leand/OneDrive/�rea de Trabalho/Programming/Exercicios R/nacIII.xlsx") #Precisa alterar esse caminho

plot(y = dados$`Gasto com Alimenta��o`, x = dados$`Renda Familiar`,
     main = "Rela��o de 'Renda familiar' e 'Gastos com alimenta��o'",
     ylab = "Gastos com Alimenta��o",
     xlab = "Renda Familiar",
     pch = 16,
     col = "red")

#b
cor(dados$`Renda Familiar`, dados$`Gasto com Alimenta��o`) # Correla��o associativa alta com rela��o direta

#c
regrassao = lm(`Gasto com Alimenta��o` ~ `Renda Familiar`, data = dados)
regrassao # Fun�ao para calcular os valor de 'a' e 'b'
abline(a = 2.6574, b = 0.3229) # Grafico de dispersao com regressao linear