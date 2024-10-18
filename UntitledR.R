# Instalar y cargar el paquete agricolae
install.packages("agricolae")
library(agricolae)

# Definir las dosis de fertilización nitrogenada
dosis_fertilizacion <- c(0, 50, 100, 150)

# Definir el número de repeticiones por dosis
repeticiones <- 5

# Generar el diseño completamente al azar (DCA)
dca <- design.crd(trt = dosis_fertilizacion, 
                  r = repeticiones, 
                  seed = 123)  
# Usamos semilla para reproducibilidad

# Visualizar el diseño generado
print(dca$book)
str(dca)
dca$book



# Instalar y cargar el paquete agricolae
install.packages("agricolae")
library(agricolae)

# Definir los niveles del Factor 1: Dosis de fertilización nitrogenada
dosis_fertilizacion <- c(0, 50, 100)

# Definir los niveles del Factor 2: Cultivares de papa
cultivares_papa <- c("Peruanita", "Canchán")

# Definir el número de repeticiones
repeticiones <- 4

# Generar el diseño DBCA
dbca <- design.ab(trt1 = dosis_fertilizacion, 
                  # Factor 1: Dosis
                  trt2 = cultivares_papa     
                  # Factor 2: Cultivares
                  r = repeticiones,            
                  # Número de repeticiones (bloques)
                  seed = 123)                  
# Semilla para reproducibilidad

# Visualizar el diseño generado
print(dbca$book)





# Instalar y cargar el paquete agricolae
install.packages("agricolae")
library(agricolae)

# Definir los niveles del Factor 1: Dosis de fertilización nitrogenada
dosis_fertilizacion <- c(0, 50, 100)

# Definir los niveles del Factor 2: Cultivares de papa
cultivares_papa <- c("Peruanita", "Canchán")

# Crear las combinaciones factoriales de los tratamientos (dosis x cultivares)
tratamientos <- expand.grid(Dosis = dosis_fertilizacion, Cultivar = cultivares_papa)

# Definir el número de repeticiones
repeticiones <- 5

# Generar el diseño completamente al azar (DCA)
dca <- design.crd(trt = tratamientos, 
                  r = repeticiones, 
                  seed = 123)  # Usamos semilla para reproducibilidad

# Visualizar el diseño generado
print(dca$book)

