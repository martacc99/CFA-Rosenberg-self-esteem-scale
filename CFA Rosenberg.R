
library(lavaan)
library(semPlot)
library(psych)
library(GPArotation)

datos <- read.csv ("data.csv", sep = "\t", header =  TRUE)
datos <- datos[1:5000,1:10]

##### Exploratory Data Analysis ####

sum(datos$gender[1:5000] == "1")
sum(datos$gender[1:5000] == "2")
sum(length(unique(datos$country[1:5000])))

head(datos)
str(datos)
describe(datos)
mardia(datos)
hist(datos$V1)
hist(datos$V2)
hist(datos$V3)
lavCor(datos)
fa.parallel(datos) 



#### Rosenberg Model ####


modelo2 <- "factor1 =~ Q1 + Q2 + Q3 + Q4 + Q5 + Q6 + Q7 + Q8 + Q9 + Q10"


fit2 <- cfa(modelo2, datos, ordered=T, estimator="WLSMV") 
summary(fit2, standardized = TRUE, fit.measures=TRUE)


modindices(fit2, sort=T, minimum.value = 10)

semPaths(fit2,"std", rotation=2, edge.label.cex = 1.0 )


#### Rosenberg's Model Revision ####

modelo2b <- "factor1 =~ Q1 + Q2 + Q3 + Q4 + Q5 + Q6 + Q7 + Q8 + Q9 + Q10
Q9 ~~ Q10
"

fit2b <- cfa(modelo2b, datos, ordered=T, estimator="WLSMV") 
summary(fit2b, standardized = TRUE, fit.measures=TRUE)

modindices(fit2b, sort=T, minimum.value = 10)

semPaths(fit2b,"std", rotation=2, edge.label.cex = 1.0 )


#### Kaplan's Model ####


modelo3<-"
factor1 =~ Q1 + Q2 + Q4 + Q6 + Q7
factor2 =~ Q3 + Q5 + Q8 + Q9 + Q10
"

fit3 <- cfa(modelo3, datos, ordered=T, estimator="WLSMV")
summary(fit3, standardized = TRUE, fit.measures=TRUE)

modindices(fit3, sort=T, minimum.value = 10)

semPaths(fit3,"std", rotation=2, edge.label.cex = 1.0 )


#### Kaplan's Model Revision ####

modelo3b<-"
factor1 =~ Q1 + Q2 + Q4 + Q6 + Q7
factor2 =~ Q3 + Q5 + Q8 + Q9 + Q10
Q9 ~~ Q10"

fit3b <- cfa(modelo3b, datos, ordered=T, estimator="WLSMV") #estimación robusta, incluye no robusta
summary(fit3b, standardized = TRUE, fit.measures=TRUE)


semPaths(fit3b,"std", rotation=2, edge.label.cex = 1.0 )



#### Kaufan's Model ####

modelo4 <- "factor1 =~ Q1 + Q3 + Q4 + Q6 + Q7 + Q2 + Q5 + Q8
factor2 =~ Q9 + Q10"

fit4 <- cfa(modelo4, datos, ordered=T, estimator="WLSMV") 
summary(fit4, standardized = TRUE, fit.measures=TRUE)

modindices(fit4, sort=T, minimum.value = 10)

semPaths(fit4,"std", rotation=2, edge.label.cex = 1.0 )


#### Kaufan's Model revision ####

modelo4b <- "factor1 =~ Q1 + Q3 + Q4 + Q6 + Q7 + Q2 + Q5 + Q8
factor2 =~ Q9 + Q10
Q6 ~~ Q7 "

fit4b <- cfa(modelo4b, datos, ordered=T, estimator="WLSMV") 
summary(fit4b, standardized = TRUE, fit.measures=TRUE)


semPaths(fit4b,"std", rotation=2, edge.label.cex = 1.0 )



