complete <- function(id = 1:332){
    library(stringr)
    
    col_names <- c("id","nobs")
    my_frame <- data.frame(matrix(ncol = 2))
    colnames(my_frame) <- col_names
    
    for(doc in id){
        file = paste(getwd(),"/specdata/",str_pad(doc, 3, pad = "0"),".csv", sep = "")
        dataset <- read.csv(file, sep = ",")
        counter <- -1
        for(j in seq(0,nrow(dataset), 1)){
            row <- dataset[j,]
            if(!anyNA(row)){
                counter <- counter + 1
            }
        }
        
        my_data <- c(doc, counter)
        my_frame <- rbind(my_frame, my_data)
    }
    my_frame[-1,]
}


