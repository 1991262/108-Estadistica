# Raul Hernandez Luna
# maticula: 1991262
# 29.01.2020


# descritiva --------------------------------------------------------------


# operadores basicos ------------------------------------------------------

2+2

a<-2

a+5

a+a^2

log(peso)

# ingresar conhunto de datos
peso <-c(70,62,52,90,38,52,50,56,70,65,76,70,72)
peso
#numero de observaciones (length)
length(peso)
# calcular la medida del peso: sumatoria de la observaciones

# y dividirlo entre el numero de individuos muestrados

sum(peso)/length (peso)
peso.media<-sum(peso)/length(peso)
mean(peso)
median(peso)

sd(peso)
var(peso)

fivenum(peso)
range(peso)


# graficas ---------------------------------------------------------------

boxplot(peso)
boxplot(peso, col = "green",ylab="Peso (Kg)", main = "Peso alumnos tomado el 29.01.2020")

