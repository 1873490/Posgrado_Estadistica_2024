#Ejercico Datos de Madera

 
#Importar datos
url <- "https://raw.githubusercontent.com/mgtagle/Met_Est_2024/main/Datos_Madera_MET.csv"

madera <- read.csv(url, header = T)


# Establecer Hipotesis ----------------------------------------------------
#H1: No exisiste diferencia entre el peso de la barreta y la gavia 
#H0: Exisiste diferencia entre el peso de la barreta y la gavia 


# Realizar inspección grafica  --------------------------------------------
boxplot(madera$Peso_g ~ madera$Especie, xlab = "Especie", ylab = "Peso (g)")


# Estadistica descriptiva de la variable peso_g --------------------------
tapply(madera$Peso_g, madera$Especie, mean)
tapply(madera$Peso_g, madera$Especie, var)
#La varianza del peso de la gavia es 7 veces mayor que la varianza de la barreta
#La varianza de el peso observado de la barreta 
      
# ¿Cuantos niveles de factor exisisten? -----------------------------------
#Exisisten dos niveles de factor uno se llama barreta y otro gavia 

# Aplicación de prueba de T -----------------------------------------------
shapiro.test(madera$Peso_g)
bartlett.test(madera$Peso_g ~ madera$Especie)
madera$Peso_t <- log10(madera$Peso_g +1)
tapply(madera$Peso_t, madera$Especie, var)
boxplot(madera$Peso_t ~ madera$Especie)

t.test(madera$Peso_g ~ madera$Especie, var.equal = F)
