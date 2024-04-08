
# Preparació ###################################################################

## Crear un Projecte ===========================================================

# File > New Project > New Directory > New Project > Create Project


## Crear arxius ================================================================

# .R
# .Rmd
# .qmd


## Situar-te (tu i el teu RStudio) =============================================
getwd()
# setwd()


## Crear directoris ============================================================
dir.create("apunts")


## Importar / exportar dades ====================================================
library(rio)
df <- import("../dades/toughest_sport.xlsx")
export(df, "toughest_sport.csv")


# Manipulació de dades bàsica ##################################################

## Inspecció ===================================================================

str(df)
summary(df)

head(df)
tail(df)

View(df)


library(tidyverse)
glimpse(df)


# summary(df)
library(skimr)
skim(df)


## Selecció (de columnes) ======================================================
select(df, SPORT, RANK)
select(df, -SPORT)


## Filtrat (de files) ==========================================================
filter(df, END > 5)
filter(df, END > 5 & FLX > 5)
filter(df, END > mean(END))


## Creació de noves columnes ===================================================
mutate(df, ord = rank(TOTAL))

?quantile
quantile(df$TOTAL, 0.9)

mutate(df, ord = TOTAL > quantile(TOTAL, 0.9))

mutate(df, ord = ifelse(TOTAL > quantile(TOTAL, 0.9), "top", "not top"))

mutate(df, ord = ifelse(
  TOTAL > quantile(TOTAL, 0.9), "top", ifelse(
    TOTAL < quantile(TOTAL, 0.1), "hell", "average"
  )))

mutate(df, ord = case_when(
  TOTAL > quantile(TOTAL, 0.9) ~ "top",
  TOTAL < quantile(TOTAL, 0.1) ~ "hell",
  TRUE ~ "average"
))


mutate(df, ord = case_when(
  TOTAL > quantile(TOTAL, 0.9) ~ "top"
))


## Pipe ========================================================================
df |> 
  mutate(df, ord = rank(TOTAL)) |> 
  filter(ord > median(ord)) |> 
  arrange(desc(ord)) |>
  select(SPORT)


## Pivotar =====================================================================

set.seed(123)
df <- data.frame(
  participant = 1:20,
  group = rep(c("ctl", "exp"), each = 10),
  weight_0 = rnorm(20, mean = 70, sd = 10),
  weight_1 = rnorm(20, mean = 60, sd = 10)
)

skim(df)

long <- df |> 
  pivot_longer(
    cols = c(weight_0, weight_1), # També: starts_with("weight"), 
    names_to = "time", 
    values_to = "weight"
  ) 

wide <- long |> 
  pivot_wider(
    names_from = time, 
    values_from = weight
  )

df == wide



# Exemple ======================================================================


df <- import("../dades/toughest_sport.xlsx")


df |> 
  ggplot(aes(x = END)) +
  geom_density()


df |> 
  select(-SPORT, -RANK) |> 
  pivot_longer(cols = everything()) |> 
  ggplot(aes(x = value)) +
  geom_density() +
  facet_wrap(~name, scales = "free")
