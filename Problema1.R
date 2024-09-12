#Codigo para problema 1
      #Clase 1
plot(1:5) # grafica el vector 1-5, se ejecuta haciendo ctrl+enter
plot(1:5, col="red", pch=16)

mis_dades <- mtcars #asignamos datos
mis_dades #ejecutamos las dos lineas para abrir los datos

#a) mediana del qsec

mis_dades$qsec #extrae la columna qsec
  #mean(mis_dades$qsec) ejecutar en la consola
17.84875
  #para hacer un histograma, graficade los datos segun frecuencia
hist(mis_dades$qsec, breaks = 9)
  #para hacer intervalos a partir de una columna de datos, p.ej 9
cut(mis_dades$qsec,9) #cut y hist no hacen los mismos cortes
  #tabla para ver la frecuencia de los intervalos
table(cut(mis_dades$qsec,9))
  #la frecuencia relativa es la frec. del intervalo/total observaciones, si eran 32
table(cut(mis_dades$qsec,9))/32
  #Para hacer una nueva tabla con freq y freq acumuladas
freq <- table(cut(mis_dades$qsec,9))
freq
tabla <- data.frame(ni=freq,
                    fi=freq/32,
                    Ni=cumsum(freq),
                    Fi=cumsum(freq/32))
tabla

#b)mediana de drat(punto medio de observaciones)
mis_dades$drat
hist(mis_dades$drat)
median(mis_dades$drat)
3.695
  #Para ordenar y ver visualmente el punto medio de los datos(mismas obs a cada lado)
sort(mis_dades$drat)

#c)Primer quartil de drat
quantile(mis_dades$drat) #por defecto ya hace la mediana en cuartos

#d)El valor percentil en què el 18% de les observacions de mpg són més petites i el 82% son majors és: 
mis_dades$mpg
quantile(mis_dades$mpg, 0.18)
15.116 

#e)El rang interquartil de cyl (diferencia entre el primer y tercer cuartil)
mis_dades$cyl
#resta el primer cuartil al tercer cuartil
IQR(mis_dades$cyl)
4
quantile(mis_dades$cyl) #para ver como va la resta

#f)La desviació típica (corregida= con n-1) de cyl
sd(mis_dades$cyl)
1.785922

#g)La variància (corregida) de qsec és
var(mis_dades$cyl)
3.189516
  #uno es la raiz del otro