#description

# Setup ----

library(tidyverse)
install.packages("modeldata")

library(modeldata)

data(ames)


head(ames)
dim(ames)

#filter out only houses with detached garage
detchd_filter <- ames$Garage_Type == "Detchd"
detchd <- ames[
  detchd_filter,
  c("Longitude", "Latitude", "Sale_Price", "Garage_Type", "Paved_Drive")
]
#prices_with_dirt_gravel
a_price <- detchd$Sale_Price[
  detchd$Paved_Drive == "Dirt_Gravel"
]

#prices_when_paved
b_price <- detchd$Sale_Price[
  detchd$Paved_Drive == paved
]
	#run t-test to check for significant pricedifference
t.test(a_price, b_price)

testSilja
