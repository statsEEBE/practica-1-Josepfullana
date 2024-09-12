#Codigo para problema 2
  #para borrar todos los datos en data
rm(list=ls())

data <- mtcars #asignamos datos
data #ejecutamos las dos lineas para abrir los datos

data$mpg
hist(data$mpg)
