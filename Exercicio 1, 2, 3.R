# EXEMPLO 1
# Lados do Triangulo
a <- 1
b <- 2
c <- 3

# Estrutura de condi<U+FFFD><U+FFFD>o
if (a != b & b != c & c != a) {
  cat("<U+FFFD> um tri<U+FFFD>ngulo escaleno.")
}

# EXEMPLO 2
# Dois objetos n<U+FFFD>mericos
d <- 5
e <- 10

# Estrutura de Condi<U+FFFD><U+FFFD>o
if (d > e) {
  cat(d)
} else {
  cat(e)
}

# EXEMPLO 3
x <- -25
ifelse(x >= 0, sqrt(x), "O n<U+FFFD>mero <U+FFFD> negativo")