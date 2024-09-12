### Paul Moon ###

### Homework 1                                         ###
### Standard R ###

#Put your code in this file. Make sure you assign the relevant values to the correct variable names, which are given below. 
#Uncomment the variables as you assign your final values/functions/results to them.

### VECTORS ###
## Q1 

v1 <- c(1,2,3,4,5,6,7,8,7,6,5,4,3,2,1)
v2 <- c(rep(c(9,4,1),10),9)
v3 <- c(0.1^3, 0.2^1, 0.1^6, 0.2^2, 0.1^9, 0.2^3, 0.1^12, 0.2^4, 0.1^15, 0.2^5, 0.1^18, 0.2^6, 0.1^21, 0.2^7, 0.1^24, 0.2^8, 0.1^27, 0.2^9, 0.1^30, 0.2^10,0.1^33, 0.2^11, 0.1^36, 0.2^12)
  
### MATRICES ###

## Q2 
  
matA <- matrix(0,nrow = 6,ncol = 6)
for (i in 1:6){
  if (i > 1){
    matA[i, i - 1] <- 1
  }
  if (i < 6){
    matA[i, i + 1] <- 1
  }
}
matA

## Q3

set.seed(42)
matB <- matrix(sample(1:10, 60, replace = TRUE), nrow = 6, ncol = 10)
a3 <- apply(matB, 1, function(x) sum(x > 4))
b3 <- which(apply(matB, 1, function(x) sum(x == 7)) == 2)

## Q4

tmpFn <- function(xVec){
  q4 <- integer(length(xVec))
  for(i in seq(1, length(xVec))){
    if(xVec[i] < 0){
      q4[i] <- xVec[i] * xVec[i] + 2 * xVec[i] + 3
    }
    else if(xVec[i] >= 0 && xVec[i] < 2){
      q4[i] <- xVec[i] + 3
    }
    else if(xVec[i] >= 2){
      q4[i] <- xVec[i] * xVec[i] + 4 * xVec[i] - 7
    }
    return(q4)
  }
}

## Q5

quadmap <- function(start, rho, niter){
  q5 <- numeric(niter)
  q5[1] <- start
  for (n in 2:niter){
    q5[n] <- rho * q5[n - 1] * (1 - q5[n - 1])
  }
  return(q5)
}

quadmap(start = 0.95, rho = 2, niter = 500)

tmp <- quadmap(start = 0.95, rho = 2.99, niter = 500)
plot(tmp, type = "1")
plot(tmp[300:500], type = "1")

## Q6

In1 <- function(xVec,yVec){
  return(colSums(outer(yVec,xVec,"<")))
}
In2 <- function(xVec,yVec){
  return(rowSums(sapply(yVec,function(y){
    y < xVec
  })))
}

## Q7

fibonacci <- function(n){
  a <- 0
  b <- 1
  for(i in 1:n){
    next_num <- a + b
    a <- b
    b <- next_num
  }
  return(a)
}

## Q8

a <- 1
b <- 1
while(b <= 10000000){
  a <- a + 1
  b <- a * b
  n <- a
}

## Q9

mat9 <- matrix(1:1000000, nrow = 100000, ncol = 10)
rowAdd <- numeric(100000)
for (i in 1:100000){
  rowAdd[i] <- sum(mat9[i,])
}
applyrS <- apply(mat9, 1, sum)
builtinrS <- rowSums(mat9)
all.equal(rowAdd, applyrS)
all.equal(rowAdd, builtinrS)