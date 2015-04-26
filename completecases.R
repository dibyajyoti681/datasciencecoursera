complete <- function(directory, id = 1:332) { 
    id <- as.integer(id)
  directory <- as.character(directory)
  d<-paste("C:/Users/dibyajyoti/z500/",directory,sep="")
  setwd(d)
  data = numeric()
  for(i in id){
    #mean2 <- as.integer(id)
    if(i>=1 & i<=9){ 
      #id==as.character(id)
      fname <- paste("00",as.character(i),sep="")
    }
    else if(i>=10 & i<=99){ 
      #id==as.character(id)
      fname <- paste("0",as.character(i),sep="")
    }
    else { 
      fname<-as.character(i)
    }
    
    fnamefinal <- paste(fname,"csv",sep=".")
    table1<- read.csv(fnamefinal, header = TRUE, sep = ",")
    data = c(data, sum(complete.cases(table1)))
    }
  return(data.frame(id, data))
}