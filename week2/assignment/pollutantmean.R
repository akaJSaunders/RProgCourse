pollutantmean <- function(pollutant, id = 1:332){
    library(stringr)
    sum <- 0
    count <- 0
    for(doc in id){
        file = paste(getwd(),"/specdata/",str_pad(doc, 3, pad = "0"),".csv", sep = "")
        dataset <- read.csv(file, sep = ",")
        pol_data <- subset(dataset, select = pollutant)
        na <- is.na(pol_data)
        sum <- sum(pol_data[!na]) + sum
        count <- count + length(pol_data[!na])
    }
    math <- sum/count
    math
}
