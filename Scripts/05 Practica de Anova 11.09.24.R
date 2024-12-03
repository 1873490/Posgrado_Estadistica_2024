#Clase Anova

sitios <- read.csv("Datos_Rascon_Anova.csv", header = T)


# Importar datos ----------------------------------------------------------
boxplot(sitios$DAP ~ sitios$Paraje)
tapply(sitios$DAP, sitios$Paraje, mean)
tapply(sitios$DAP, sitios$Paraje, var)

boxplot(sitios$EDAD ~ sitios$Paraje)

tapply(sitios$EDAD, sitios$Paraje, mean)
tapply(sitios$EDAD, sitios$Paraje, var)

shapiro.test(sitios$DAP)
bartlett.test(sitios$DAP ~ sitios$Paraje)

#Los datos DAP no son normales aunque sus varianzas si son homegeneas 

sitios$DAP_T <- sqrt (sitios$DAP)
shapiro.test(sitios$DAP_T)
boxplot(sitios$DAP_T ~ sitios$Paraje)

mean(sitios$DAP_T^2)
mean(sitios$DAP)


sitios.aov <- aov(sitios$DAP_T ~ sitios$Paraje)
summary(sitios.aov)

TukeyHSD(sitios.aov)
plot(TukeyHSD(sitios.aov))
