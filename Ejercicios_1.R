#EXAMEN 1 : PREGUNTA 5 
# Primero creamos las columnas por separado 
SY <- seq(2001,2010)
R <- c('Antonio','Antonio','Antonio','Antonio','Maria','Raúl','Raúl','Nuria','Nuria','Nuria')
T <- c(16.81,15.31,20.36,17.53,16.79,17.85,17.75,17.57,19.80,17.51)
S <- c(32.47,32.87,32.66,32.86,32.55,32.47,33.05,32.51,32.74,32.84)
DF <- data.frame(Sampling_Year = SY, Researcher = R, Temperature = T, Salinity = S)
DF

# PREGUNTA 11
x <- c(1,2,3,4,5,6)
y <- c(10,20,30)
x + y
# Crear las variables con los valores de la imagen

Nombre <- c("Juan", "Pedro", "Maria", "Angeles")

Examen <- data.frame(Nombre_Examen = c("Colesterol", "Glucemia", "Hemoglobina"),
                     Valor_Examen = c(200, 100, 15))
Habitaciones <- c(2, 3, 4, 5)
Precios <- c(1000, 1500, 2000, 2500)

Catalogo <- c(TRUE, FALSE, TRUE, FALSE)
Numero <- 1:4

# Crear la lista con las variables
Lista <- list(Nombre, Examen, Habitaciones, Precios, Catalogo, Numero)
# Fechas 

fecha1 <- as.POSIXct('2005-08-01 04:00:00',tz ='UTC')
fecha1
structure(fecha1,tzone='Europe/Madrid')
