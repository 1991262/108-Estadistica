library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

# importar datos ----------------------------------------------------------

cuadro1 <- read.csv("clases/cuadro1.csv", header = TRUE)
summary(cuadro1)


# normailidad -------------------------------------------------------------

head(cuadro1)

#aplicar prueba de shapiro.test para la variable altura

hist(cuadro1$Alruta)
shapiro.test(cuadro1$Alruta)
hist(cuadro1$Diametro)
shapiro.test(cuadro1$Diametro)

frecu<-table(cuadro1$clases)
prop.table()

boxplot(cuadro1$Diametro ~ cuadro1$Especie, col= "grey")
boxplot(cuadro1$vecinos ~ cuadro1$vecinos, col= "blue")
boxplot(cuadro1$Especie ~ cuadro1$Especie, col= "red")

# prueba de homogenidad] --------------------------------------------------

var(cuadro1$Diametro)
var(cuadro1$Alruta)


# datos de ebano ----------------------------------------------------------

ebanos <- read.csv("clases/ebanos.csv", header = T)
hist(ebanos$diametro)
hist(ebanos$diametro)

boxplot(ebanos)
fivenum(ebanos$diametro)


# cuantos individuos tienen un diam menor al 1er quartil' -----------------

Sum(ebanos$diametro <=15.55)


# cuantos diamertros tiene un diam menor al 3er quartil -------------------

sum(ebanos$diametro <= 34.25)

# cuantos diamertros tiene un diam menor al 1er quartil pero menor o igual a el 2do quartil?-------------------

sum(ebanos$diametro >=15.55 |ebanos$diametro <=25.90)

sum(ebanos$diametro <= 25.9)

# cuantos diamertros tiene un diam menor al 1er quartil pero menor o igual a el 2do quartil?-------------------

sum(ebanos$diametro >=10 & ebanos$diametro <=15.51)

ks.test(cuadro1$Diametro, "pnorm",
        mean=mean(cuadro1$Diametro,
                  sd=sd(cuadro1$Diametro)))


