# EXEMPLO 5
dados <- data.frame(a = c("2", "5", "1"), b = c("2", "2", "2"), c = c("2", "3", "1"),d = c("1", "5", "1"),e = c("2", "5", "5"),f = c("2", "2", "2"))
dados

for(i in 1:6){
  ifelse(dados[1, i] == dados[2, i] & dados[2, i] == dados[3, i], print("Equilatero"), 
         ifelse(dados[1, i] != dados[2, i] & dados[2, i] != dados[3, i] & dados[3, i] != dados[1, i], print("Escaleno"), print("Isoceles"))) 
}
