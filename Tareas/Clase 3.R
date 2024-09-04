prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa <- read.csv(prof_url,  encoding = "latin1")
head(profepa)

summary(profepa)

mean(profepa$Inspección)

ins <- subset (profepa,profepa$Inspección >= mean(profepa$Inspección))

bajo <- subset(profepa, profepa$Inspección <= mean(profepa$Inspección))

cero <- subset(profepa,profepa$Inspección == 0)

todos <- subset(profepa, profepa$Inspección !=0)


# Descarga de datos seguros -----------------------------------------------

library(repmis) # No olvidar cargar la paquetería
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

conjunto$Especie <- as.factor(conjunto$Especie)
conjunto$clase <- as.factor(conjunto$clase)
summary(conjunto)

boxplot(conjunto$Diametro ~ conjunto$Especie)

spFH <- subset(conjunto, conjunto$Especie != "C")

tapply(spFH$Diametro, spFH$Especie, mean )

boxplot(spFH$Diametro ~ spFH$Especie, xlab = "Especies", ylab = "Diametro", col = "blue")


# Normalidad de datos -----------------------------------------------------


shapiro.test(spFH$Diametro)


# Homogeneidad de datos  --------------------------------------------------

bartlett.test(spFH$Diametro, spFH$Especie)


# Pruebas de t independientes  --------------------------------------------

t.test(spFH$Diametro ~ spFH$Especie, var.equal = TRUE)


# Prueba de t de una muestra ----------------------------------------------

t.test(conjunto$Diametro, mu = 16.4)


prod <- read.csv("produccion.csv", header = TRUE)

boxplot(prod$Kgsem ~ prod$Tiempo)

t.test(prod$Kgsem ~ prod$Tiempo, paired = TRUE)
tapply(prod$Kgsem, prod$Tiempo, mean)
