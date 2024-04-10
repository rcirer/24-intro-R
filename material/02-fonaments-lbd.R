#### La base ###################################################################

# Les línies que comencen amb # són comentaris. Gloria eterna als comentaris.


# Assignació: atribueixes un valor a un objecte amb l'operador `<-` així

x <- 36
z <- "Rafel"


# També funciona això, però no ho facis:

x = 37

37 == 37

# Functions: programar consisteix en executar funcions. Moltes funcions.



# Com executar una funcio?
#   a) Escriure a la consola + intro
#   b) Seleccionar el text a l'editor + ctrl/cmd + enter



# Funcions: pots escriure tu funcions noves:

duplica <- function(x) { x*2}

duplica(x)

# Ajuda / documentació



# Google!!!
# ggplot2, ggstatsplot, easystats, gt, gtsummary, ...


# Errors




# Funcions: pots utilitzar les funcions d'algú altre si les ha publicat. 
# Sense preguntar, sense pagar. Ciència oberta. https://cran.r-project.org/




# Pots veure la citació d'un paquet amb la funció `citation()`

citation("brms")


# Directoris


getwd()


#### Tipus de dades ############################################################

# Pots comprovar el tipus de dades amb la funció `class()`





## Lògic =======================================================================
# Pots fer operacions lògiques amb els operadors `==`, `!=`, `>`, `<`, `>=`, `<=`

"Oleguer" == "Rafel"

5 == (3+2)


## Numèric =====================================================================
# Pots fer operacions aritmètiques amb els operadors `+`, `-`, `*`, `/`

10/3


## Caràcter ====================================================================
# Pots concatenar caràcters amb l'operador `paste()`

x <- "Hola"
y <- "a tothom!"

paste(x, y)

x <-1:10

paste("cmj", x)

#### Estructures de dades ######################################################

## Vector ======================================================================


pes <- c(80, 34, 60, 58, 40)

hist(pes)

## Matriu ======================================================================

matrix(1:9, nrow = 3)



## Llista ======================================================================





## Data.frame ==================================================================

sexe = c("H", "D", "D", "D", "H")

apte = c(T, T, T, F, F)

data.frame(pes, sexe, apte)


#### Tipus de variables ########################################################

# Categòrica (qualitativa) =====================================================


## Binària 

sexe <- factor(sexe)


## Nominal




## Ordinal



# Numèrica (quantitativa) ======================================================

## Discreta




## Continua




#### Manipulació ####===========================================================





