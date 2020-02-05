 # raul alejandro hernandez lunas
 # matricula: 1991262
 # 30.01.2020


# importar datos ----------------------------------------------------------

BD.ebanos <- read.csv("clases/clases/ebanos.csv", header = TRUE)
head(BD.ebanos)
summary(BD.ebanos)

mean(BD.ebanos$diametro)
mean(BD.ebanos$altura)

sd(BD.ebanos$diametro)
sd(BD.ebanos$altura)


boxplot(BD.ebanos$diametro, ylab="diametro (cm)",
        col="lightblue",main= "diametro de plantulas de Ebano")
boxplot(BD.ebanos$altura)        

stem(BD.ebanos$diametro)
stem(BD.ebanos$altura)


hist(BD.ebanos$diametro, col="blue",
     xlab="diametro (cm)", ylab= "frecuencia",
     main="Histograma de Diametro")


# condicionantes ----------------------------------------------------------

# ¿cuantos individuos tienen un diam menor que la media?

sum(BD.ebanos$diametro < mean(BD.ebanos$diametro))
sum(BD.ebanos$diametro < 25.97)

# ¿cuantos individuos tiene un diam mayor que la media?

sum(BD.ebanmos$diametro > mean(BD.ebanos$diametro))

sum(BD.ebanos$diametro > 30)

# ¿Existira una observacion igual a la medida?

sum(BD.ebanos$diametro == mean(BD.ebanos$diametro))

# subconjunto de datos subset
ebanos.30 <- subset(BD.ebanos,
                    BD.ebanos$diametro > 30)
