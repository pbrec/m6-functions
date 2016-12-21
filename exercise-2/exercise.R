# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength<-function(x,y){
  
  z<-length(x)-length(y)
  
  return(abs(z)) #abs turns z to absolute value, to avoid negative values
  
}

# Pass two vectors of different length to your `CompareLength` function
a<-c(1:3)
b<-c(1:7)

CompareLength(b,a)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference<-function(x,y){
  
  z<-length(x)-length(y)
  
  if(z>0){
    answer<-paste("Your first vector is longer by", abs(z), "elements")  
  } 
  
  else if(z<0){
    answer<-paste("Your second vector is longer by", abs(z), "elements")
    
  }
  else{
    answer<-"Both vectors have the same length"
  }
  return(answer) 
  
}



# Pass two vectors to your `DescribeDifference` function
a<-c(1:3)
b<-c(1:7)

DescribeDifference(a,b)
### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer

DescribeDifference<-function(x,y){
  
  z<-length(x)-length(y)
  
  if(z>0){
    name<-deparse(substitute(x))
    answer<-paste("Vector", name, "is longer by", abs(z), "elements")  
  } 
  
  else if(z<0){
    name<-deparse(substitute(y))
    answer<-paste("Vector", name, "is longer by", abs(z), "elements")
    
  }
  else{
    answer<-"Both vectors have the same length"
  }
  return(answer) 
  
}

bee<-c(1:3)
honey<-c(1:7)

DescribeDifference(bee,honey)
