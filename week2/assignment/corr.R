source("complete.R")

corr <- function(threshold = 0){
    x <- c()
    library(stringr)
    id = 1:332
    for(doc in id){
        print(doc)
        file = paste(getwd(),"/specdata/",str_pad(doc, 3, pad = "0"),".csv", sep = "")
        dataset <- read.csv(file, sep = ",")
        
        com = complete(doc)$nobs
        
        if(com > threshold){
            dataset <- dataset[complete.cases(dataset),]
            x <- rbind(x,(cor(dataset$sulfate,dataset$nitrate)))
        }
    }
    if(is.null(x)){
      return(c(0))
    }
    return(x)
}
