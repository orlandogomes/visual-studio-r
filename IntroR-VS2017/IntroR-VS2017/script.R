#R Tools no Visual Studio 2017

#Diretorio
getwd()
setwd("diretorio")

#Pacotes
install.packages("ggplot2")
library("ggplot2")

#Leitura e Export de Dados
write.csv(mtcars, file = "mtcars.csv")
mt_data <- read.csv("mtcars.csv")

str(mt_data)
head(mt_data,n=10)

#Operações
a <- 1
b <- 3
c <- a + b
c


#Vetores
v1 <- c(1, 2, 3, 4)
v2 <- c(4, 5, 6)
v3 <- v1 + v2
v3

#Rbind x Cbind
v1 <- c(1:5)
v2 <- c(1:5)

cbind <- cbind(v1, v2)
cbind
rbind <- rbind(v1, v2)
rbind

#Matriz
m1 <- matrix(1:9, ncol = 3, nrow = 3)
m2 <- matrix(1:9, ncol = 3, nrow = 3)
m3 <- m1 * m2
m1
m2
m3

#Data Frame 
nome <- c("Boneca", "Carrinho", "Autorama")
estado <- c(TRUE, FALSE, TRUE)
tempo <- c(1, 2, 3)

brinquedo <- data.frame(nome, estado, tempo)
brinquedo

#Graficos

#Plot Simples
plot(mpg ~ wt, data = mtcars)

#Geom Point (Solar x Ozone)
ggplot(airquality, aes(x = Solar.R, y = Ozone)) +
   geom_point(color = c("blue")) +
   ggtitle("Grafico") +
   labs(x = "Raios Solares", y = "Ozonio") +
   theme_bw()


#Geom Density (Temp by Month)
ggplot(airquality, aes(Temp)) +
  geom_density() +
  facet_grid(~Month)

#Modelos - Regressão Linear Simples (Futebol)
mod <- lm(mpg ~ wt, data = mtcars)
summary(mod)

#About
name <- c("Orlando Gomes")
title <- c("Microsoft Student Partner(MSP)")
medium <- c("https://medium.com/@orlandogomes_13207")
linkedin <- c("inkedin.com/in/orlandomariano")
facebook <- c("facebook.com/orlandomaiuri")
email <- c("orlando.mariano@studentpartner.com")
