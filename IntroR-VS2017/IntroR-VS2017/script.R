#Usando o R no Visual Studio 2017

#Diretorio
getwd()

#Plot
plot(mpg ~ wt, data = mtcars)

#Export de Dados
write.csv(airquality, file = "airquality.csv")
#Leitura de Dados
air_data <- read.csv("airquality.csv")
head(air_data, n = 10)

#Operações
a <- 10
b <- 20
c <- a + b
c

#Vetores
a <- c(1:10)
b <- c(11:20)
c <- a * b
c

#Sequencias
s1 <- seq(1, 10, by = 0.2)
r1 <- rep(c(0, 1, 2), times = 10)

s1
r1

#Matriz
m1 <- matrix(1:8, nrow = 3, ncol = 3)
m2 <- matrix(9:17, nrow = 3, ncol = 3)
m3 <- m1 + m2
m3

#Produtos Microsoft
nome <- c("SharePoint", "PowerBI", "Visual Studio")
ID <- c(1, 2, 3)
Usada <- c(TRUE, FALSE, TRUE)
produtos <- data.frame(nome, ID, Usada)

#Graficos
plot(mpg ~ wt, data = mtcars)
plot(Ozone ~ Solar.R, data = airquality)

#Modelos - Regressão Linear Simples
mod1 <- lm(Ozone ~ Solar.R + Wind, data = airquality)
summary(mod1)
cor(airquality)

mod2 <- lm(mpg ~ wt + hp, data = mtcars)
summary(mod2)
cor(mtcars)