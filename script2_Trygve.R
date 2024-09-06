# Description : trening
# Author: Trygve
# Date created: 2024-09-05
# Date last change


# Setup ----


library(tidyverse)
library(modeldata)

## Read and expore data ----

data(ames)

# data henter inn datasettet fra modeldata?

dim(ames)
# dim ser på datasettet

head(ames, 20)
tail(ames)

## analyse ----

### subanalyse ----


garasje <- ames[, c("Garage_Type", "Year_Built", "Sale_Price")]

ms <- garasje$Sale_Price[garasje$Year_Built == 2006]
m <- mean(ms)
m_max <- max(ms)

cat("Max: ", m_max, "; mean: ", m)
hist(garasje$Sale_Price)

# I agree with changes


install.packages("lintr")


#Silja_adds_improvements

# trygve added line

# Recheck line 47
