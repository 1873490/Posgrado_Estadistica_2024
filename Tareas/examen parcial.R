#Sandra Berenice Valdes Platas
#1873490
#25/09/24

#Examen Parcial
datos <- data.frame(diam_arboles, altura_arboles)
set.seed(42) # Para reproducibilidad 
n <- 30
altura <- rnorm(n, mean = 170, sd= 10) #ALtura en cm
peso <- 0.5 * altura + rnorm(n, mean = 0, sd = 5) # Peso en kg, con algo de ruido 

t.test(altura)
t.test(peso)

summary(datos)

set.seed(25) #Para reporducibilidad 
n <- 40 
diam_arboles <- rnorm(n, mean = 20, sd = 10) # Edad de los arboles en años 
altura_arboles <- 1.5 * diam_arboles + rnorm(n, mean = 0, sd = 3) #Altura en metros, con algo de ruido 
plot(datos$diam_arboles, datos$altura_arboles, col = "red", xlab = "Diametro (cm)", ylab = "Altura")

cor.test(datos$diam_arboles, datos$altura_arboles)

#Solo obtener el intercepto de alfa y beta 
datos.lm <- lm(datos$diam_arboles ~ datos$altura_arboles)
datos.lm
summary(datos.lm)





