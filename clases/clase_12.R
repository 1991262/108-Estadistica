
# importar datos de cedrorojo -------------------------------------------

cedrorojo <- read_xls("clases/cedrorojo.xls", header= T)

summary(cedrorojo)


# una muestra -------------------------------------------------------------

# media terorectica de la variable diametro ----------------------------
# establecida que conafor para cedro rojo es igual a 13 -------------------

# compar la media observa de la variable diametro para --------------------
# las plantulas produccidas en vivero (media=12.524, valores --------------
# observados). ------------------------------------------------------------


# "mu" debe ser igual a la variable teoretica -----------------------------
# el valor del alfa establecido es 0.05 -----------------------------------

t.test(cedrorojo$diametro, mu=13)
t.test(cedrorojo$diametro, mu=12.7)

t.test(cedrorojo$altura, mu=20)
t.test(cedrorojo$altura, mu=19)
