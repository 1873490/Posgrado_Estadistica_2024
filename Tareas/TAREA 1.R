Data.1 <- read.csv("CUADRO 1.csv", header = TRUE)

H.media <- subset(Data.1, Data.1$Altura <= mean(Data.1$Altura))
H.16 <- subset(Data.1, Data.1$Altura < 16.5)

Vecinos.3 <- subset(Data.1, Data.1$Vecinos <= 3)
Vecinos.4 <- subset(Data.1, Data.1$Vecinos > 4 )
                    
DBH.media <- subset(Data.1, Data.1$Diametro < mean(Data.1$Diametro))                    
DBH.16 <- subset(Data.1, Data.1$Diametro > 16)                    

Cedro <- subset(Data.1, Data.1$Especie == "C")                    
Tsuga.Douglasia <- subset(Data.1, Data.1$Especie != "C")

DBH.16.9 <- subset(Data.1, Data.1$Diametro <= 16.9)
ATLU <- subset(Data.1, Data.1$Altura > 18.5)


# Vizualizacion de dato ---------------------------------------------------

hist(Data.1$Altura, xlab = "Altura", ylab = "Frecuencia", col = "green", main = "Altura")
hist(H.media$Altura, xlab = "Altura", ylab = "H.media", col = "blue", main = "Altura H.media")
hist(H.16$Altura, xlab = "Altura", ylab = "H.16", col = "red", main = "Altura H.16")

hist(Data.1$Vecinos,xlab = "Vecinos", ylab = "Frecuencia", col = "green", main = "Vecinos")
hist(Vecinos.3$Vecinos, ylim = c(0,15), xlim = c(0,3), xlab = "Vecinos", ylab = "Vecinos.3", col = "blue", main = "Vecinos.3")
hist(Vecinos.4$Vecinos, xlab = "Vecinos", ylab = "Vecinos.4", col = "red", main = "Vecinos.4")

hist(Data.1$Diametro, xlab = "Diametro", ylab = "Frecuencia", col = "green", main = "Diametro")
hist(DBH.media$Diametro,xlab = "Diametro", ylab = "DBH.media", col = "blue", main = "Diametro DBH.media")
hist(DBH.16$Diametro, xlab = "Diametro", ylab = "DBH.16", col = "red", main = "Diametro DBH.16")


# Estadisiticas basicas ---------------------------------------------------

sd(H.media$Altura)
mean(H.media$Altura)

sd(H.16$Altura)
mean(H.16$Altura)

sd(Vecinos.3$Vecinos)
mean(Vecinos.3$Vecinos)

sd(DBH.media$Diametro)
mean(DBH.media$Diametro)

sd(DBH.16$Diametro)
mean(DBH.16$Diametro)
