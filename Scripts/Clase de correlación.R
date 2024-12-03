# Correlacion de datos 

library(repmis)
EDad <- source_data("https://www.dropbox.com/s/nxoijhgmutuho0s/datos_control_Rascon.csv?dl=1")

summary(EDad)

plot(EDad$DAP, EDad$EDAD, pch = 19, col = "red", xlab = "Diametro (cm)", ylab = "Edad", ylim = c(20,140), xlim = c(10,50))

cor.test(EDad$DAP, EDad$EDAD)

edad.lm <- lm(EDad$EDAD ~ EDad$DAP)
#SOlo obtener el intercepto (alfa) y beta 
edad.lm     

#Para obetener significancia aplicp summary 
summary(edad.lm)

plot(EDad$DAP, EDad$EDAD, pch = 19, col = "red", xlab = "Diametro (cm)", ylab = "Edad", ylim = c(20,140), xlim = c(10,50))

abline(edad.lm)
text(15,120, "Y = -8.4 * 2.43(x)")

edad.lm$coefficientsx|
edad.lm$residuals
EDad$res <- edad.lm$residuals
EDad$edprim <- edad.lm$fitted.values
EDad$com.res <- EDad$EDAD - EDad$edprim

#Suma de residuales 
sum(EDad$res)^2
sum(EDad$res ^2)/58

#estimar la edad (prima) para los valores de DAP: 15,30,45,47
valores <- c(15,30,45,47)
prima <- -8.4 + 2.4 * (valores)
prima



