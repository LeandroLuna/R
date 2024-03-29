library(readxl)

#Exercicio 1
dados <- read_excel("C:/Users/leand/OneDrive/�rea de Trabalho/Programming/Exercicios R/Exemple.xlsx")

plot(y = dados$Y, x = dados$X,
     main = "Rela��o tempo de servi�o e sal�rio",
     ylab = "Tempo de trabalho",
     xlab = "Sal�rio",
     pch = 16,
     col = "orange")

regrassao = lm(Y ~ X, data = dados)
# regrassao => o valor de intercept � o coeficiente 'a' e o valor de 'x' � b
abline(a = 2.423044, b = 0.008729) 

#Exercicio 2
novos_dados <- read_excel("C:/Users/leand/OneDrive/�rea de Trabalho/Programming/Exercicios R/Importar.xlsx")
plot(y = novos_dados$Valor, x = novos_dados$`Nota Fiscal`,
     main = "Rela��o Nota Fiscal e Valor",
     ylab = "Nota fiscal",
     xlab = "Valor",
     pch = 16,
     col = "red")

nova_regrassao = lm(`Nota Fiscal` ~ Valor, data = novos_dados)
abline(a = 1.042, b = 4.189)

#Exercicio 3
novos_novos_dados <- read_excel("C:/Users/leand/OneDrive/�rea de Trabalho/Programming/Exercicios R/massaxidade.xlsx")

plot(y = novos_novos_dados$`Massa muscular`, x = novos_novos_dados$Idade,
     main = "Rela��o Idade x Massa Muscular",
     ylab = "Massa Muscular",
     xlab = "Idade",
     pch = 16,
     col = "green")

nova_nova_regressao = lm(formula = `Massa muscular` ~ Idade, data = novos_novos_dados)
abline(a = 148.197, b = -1.027)

#Exercicio 4
new_data <- read_excel("C:/Users/leand/OneDrive/�rea de Trabalho/Programming/Exercicios R/new_data.xlsx")

plot(y = new_data$`Gasto com Alimenta��o`, x = new_data$`Renda Familiar`,
     main = "Rela��o Renda Familiar x Gastos com Alimenta��o",
     ylab = "Gastos com Alimenta��o",
     xlab = "Renda Familiar",
     pch = 16,
     col = "purple")

new_regression = lm(formula = `Gasto com Alimenta��o` ~ `Renda Familiar`, data = new_data)
abline(a = 5.4005, b = 0.2558)

#Exercicio 5
new_new_data <- read_excel("C:/Users/leand/OneDrive/�rea de Trabalho/Programming/Exercicios R/substancias.xlsx")

plot(y = new_new_data$Y, x = new_new_data$X,
     main = "Rela��o Subst�ncias tomadas x Nivel de Concentra��o",
     ylab = "Concentra��o",
     xlab = "Subst�ncias",
     pch = 16,
     col = "pink")

new_new_regression = lm(formula = Y ~ X, data = new_new_data)
abline(a = 0.16, b = 0.98)
