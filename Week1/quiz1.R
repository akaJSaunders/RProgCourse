dataset = read.csv(file = "hw1_data.csv")
attributes(dataset)
nrow(dataset)
first_two = head(dataset, 2)
last_two = tail(dataset, 2)
row_47 = dataset[47,]

# All Rows and All Columns
df[,]
# First row and all columns
df[1,]
# First two rows and all columns
df[1:2,]
# First and third row and all columns
df[ c(1,3), ]
# First Row and 2nd and third column
df[1, 2:3]
# First, Second Row and Second and Third COlumn
df[1:2, 2:3]
# Just First Column with All rows
df[, 1]
# First and Third Column with All rows
df[,c(1,3)]

ozone = dataset$Ozone
na <- is.na(ozone)
ozone[na]
length(ozone[na])
vozone = ozone[!na]
mean(ozone[!na])


good <- complete.cases(dataset$Ozone, dataset$Solar.R, dataset$Temp)
mean(dataset$Solar.R[good & dataset$Ozone > 31 & dataset$Temp > 90])

good <- complete.cases(dataset$Month, dataset$Temp)
mean(dataset$Temp[good & dataset$Month == 6])

good <- complete.cases(dataset$Month, dataset$Ozone)
max(dataset$Ozone[good & dataset$Month == 5])


install.packages("swirl")
packageVersion("swirl")
library(swirl)

install_from_swirl("R Programming")



