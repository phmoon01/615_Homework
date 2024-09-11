### Paul Moon ###

### Homework 1                                         ###
### Standard R ###

#Put your code in this file. Make sure you assign the relevant values to the correct variable names, which are given below. 
#Uncomment the variables as you assign your final values/functions/results to them.

### VECTORS ###
## Q1 

v1 <- c(1,2,3,4,5,6,7,8,7,6,5,4,3,2,1)
v2 <- c(rep(c(9,4,1),10),9)
v3 <- as.vector(rbind(0.1^3*(1:12),0.2^1*(1:12)))
  
### MATRICES ###

## Q2 
  
matA<-matrix(0,6,6)

## Q3

set.seed(42)
matB<-matrix(sample.int(10),6,10)
#a3<-
#b3<-

## Q4

#tmpFn<-

## Q5

#quadmap<-

## Q6

In1<- function(xVec,yVec){
  return(colSums(outer(yVec,xVec,"<")))
}
In2<- function(xVec,yVec){
  return(rowSums(sapply(yVec,function(y){
    y<xVec
  })))
}

## Q7

fibonacci<-function(n){
  a <- 0
  b <- 1
  for(i in 1:n){
    next_num <- a + b
    a <- b
    b <- next_num
  }
}

## Q8

#n<-

## Q9

#rowAdd<-
  