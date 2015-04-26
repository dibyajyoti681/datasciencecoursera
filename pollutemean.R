pollutantmean <- function(directory,pollutant, id = 1:332) {
  id <- as.integer(id)
  directory <- as.character(directory)
  d<-paste("C:/Users/dibyajyoti/z500/",directory,sep="")
  setwd(d)
  pollutant <- as.character(pollutant)
  #directory <- as.character(directory)
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
    x=table1[[pollutant]]
    data = c(data, x)
    #x<-c(table1,x)
    
      }
  mean1=round(mean(data, na.rm = TRUE),3)
  mean1
  }
