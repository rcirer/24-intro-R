#### La base ###################################################################

# Les línies que comencen amb # són comentaris. Gloria eterna als comentaris.


# Assignació: atribueixes un valor a un objecte amb l'operador `<-` així
x <- "Hola, inefc!"


# També funciona això, però no ho facis:
x = "Hola, inefc!"


# Functions: programar consisteix en executar funcions. Moltes funcions.
print(x)


# Com executar una funcio?
#   a) Escriure a la consola + intro
#   b) Seleccionar el text a l'editor + ctrl/cmd + enter


# Funcions: pots escriure tu funcions noves:
duplica <- function(x) {x * 2}

y <- 1:10
duplica(y)


# Ajuda / documentació
?mean
?glm

# Google!!!
# ggplot2, ggstatsplot, easystats, gt, gtsummary, ...


# Errors
x <- c("1", "2", "3")
mean(x)


# Funcions: pots utilitzar les funcions d'algú altre si les ha publicat. 
# Sense preguntar, sense pagar. Ciència oberta. https://cran.r-project.org/
install.packages("rio")
library(rio)


# Pots veure la citació d'un paquet amb la funció `citation()`
citation("rio")


# Directoris
getwd()
setwd("C:/Users/inefc/Desktop/inefc_2024-03-13")



#### Tipus de dades ############################################################

# Pots comprovar el tipus de dades amb la funció `class()`

class(TRUE)
class(10)
class("inefc")


## Lògic =======================================================================
# Pots fer operacions lògiques amb els operadors `==`, `!=`, `>`, `<`, `>=`, `<=`

TRUE == T
FALSE == F
15 == 10 + 5
15 == 10 + 6


## Numèric =====================================================================
# Pots fer operacions aritmètiques amb els operadors `+`, `-`, `*`, `/`

10 + 5
10 - 5
10 / 3


## Caràcter ====================================================================
# Pots concatenar caràcters amb l'operador `paste()`
"inefc"
"3.14159"
"TRUE"
paste("Hola", "inefc!")


#### Estructures de dades ######################################################

## Vector ======================================================================

x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
x <- 1:9
x <- seq(from = 1, to = 9, by = 1)

print(x)


## Matriu ======================================================================

y <- matrix(1:9, nrow = 3, ncol = 3)


## Llista ======================================================================

z <- list(x, y)
z <- list(x, y, z)

print(z)
str(z)

## Data.frame ==================================================================

# nom <- 
# edat <- 
# pes <-
# talla <-
# sexe <-

df <- data.frame(
  nom = c("Joan", "Maria", "Pau", "Anna", "Jordi"),
  edat = c(20, 25, 30, 35, 40),
  pes = c(70, 60, 80, 75, 85),
  talla = c(1.70, 1.60, 1.80, 1.75, 1.85),
  sexe = c("H", "D", "H", "D", "H")
)


#### Tipus de variables ########################################################

# Categòrica (qualitativa) =====================================================
?factor


## Binària 

sexe <- factor(c("H", "D", "H", "D", "H"))

levels(sexe)
table(sexe)


## Nominal

emocions <- factor(c("alegria", "tristesa", "por", "alegria", "por"))

levels(emocions)
table(emocions)


## Ordinal

intensitat <- factor(c("baixa", "mitja", "alta", "mitja", "alta"), ordered = TRUE)

class(intensitat)
levels(intensitat) 


intensitat <- factor(intensitat, levels = c("baixa", "mitja", "alta"))

levels(intensitat)
table(intensitat)



# Numèrica (quantitativa) ======================================================

## Discreta

repeticions <- c(10, 17, 3, 10, 42)

table(repeticions)
median(repeticions)


## Continua

talla <- rnorm(10, mean = 1.70, sd = 0.1)

mean(talla)
sd(talla)




#### Manipulació ####===========================================================

x
x[3]
x[1:3]

df
df$nom
df[[1]]
df[1, 2]
df[1:2, 2:3]


df$edat[1] <- 21
df$sexe <- factor(df$sexe)
df$bmi <- df$pes / (df$talla^2)

View(df)
