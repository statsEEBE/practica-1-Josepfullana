#Codigo para problema 3
  #a
x <- c(-8,5,2,-8,9,5,-3,1,-1,4,-4,9,3,-9,7,0,-7,8,-4,1,7,-6,4,5,
       -9,-2,-8,5,-5)

sum(x) 
  #b
#para eliminar posiciones, restamos la c
y <- x[-c(21,2,26)]
  #c
sum(exp(x))-sum(exp(y))
  #d
y[c(19,24)] #hacerlo en consola
