library(readxl)

#Exercicio 1
dados <- read_excel("C:/Users/leand/OneDrive/Área de Trabalho/Programming/Exercicios R/Exemple.xlsx")

plot(y = dados$Y, x = dados$X,
     main = "Relação tempo de serviço e salário",
     ylab = "Tempo de trabalho",
     xlab = "Salário",
     pch = 16,
     col = "orange")

regrassao = lm(Y ~ X, data = dados)
# regrassao => o valor de intercept é o coeficiente 'a' e o valor de 'x' é b
abline(a = 2.423044, b = 0.008729) 

#Exercicio 2
novos_dados <- read_excel("C:/Users/leand/OneDrive/Área de Trabalho/Programming/Exercicios R/Importar.xlsx")
plot(y = novos_dados$Valor, x = novos_dados$`Nota Fiscal`,
     main = "Relação Nota Fiscal e Valor",
     ylab = "Nota fiscal",
     xlab = "Valor",
     pch = 16,
     col = "red")

nova_regrassao = lm(`Nota Fiscal` ~ Valor, data = novos_dados)
abline(a = 1.042, b = 4.189)

#Exercicio 3
novos_novos_dados <- read_excel("C:/Users/leand/OneDrive/Área de Trabalho/Programming/Exercicios R/massaxidade.xlsx")

plot(y = novos_novos_dados$`Massa muscular`, x = novos_novos_dados$Idade,
     main = "Relação Idade x Massa Muscular",
     ylab = "Massa Muscular",
     xlab = "Idade",
     pch = 16,
     col = "green")

nova_nova_regressao = lm(formula = `Massa muscular` ~ Idade, data = novos_novos_dados)
abline(a = 148.197, b = -1.027)

#Exercicio 4
new_data <- read_excel("C:/Users/leand/OneDrive/Área de Trabalho/Programming/Exercicios R/new_data.xlsx")

plot(y = new_data$`Gasto com Alimentação`, x = new_data$`Renda Familiar`,
     main = "Relação Renda Familiar x Gastos com Alimentação",
     ylab = "Gastos com Alimentação",
     xlab = "Renda Familiar",
     pch = 16,
     col = "purple")

new_regression = lm(formula = `Gasto com Alimentação` ~ `Renda Familiar`, data = new_data)
abline(a = 5.4005, b = 0.2558)

#Exercicio 5
new_new_data <- read_excel("C:/Users/leand/OneDrive/Área de Trabalho/Programming/Exercicios R/substancias.xlsx")

plot(y = new_new_data$Y, x = new_new_data$X,
     main = "Relação Substâncias tomadas x Nivel de Concentração",
     ylab = "Concentração",
     xlab = "Substâncias",
     pch = 16,
     col = "pink")

new_new_regression = lm(formula = Y ~ X, data = new_new_data)
abline(a = 0.16, b = 0.98)
