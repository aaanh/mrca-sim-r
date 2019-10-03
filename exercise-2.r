# Nguyen Hoang Anh
# John Abbott College, Montreal, CANADA.
# Github: https://github.com/hirumaakane-ha/r-project-2019
# License: MIT License
# Course: Statistics
# Instructor: Luiz T. Kazuo
# This R program and its repository on Github is a course project. This project is built upon the MRCA (Most Recent Common Ancestors) paper by Dr. Chang (Yale University) et al. 
# A copy of Dr. Chang's paper could also be found in this repository.

# Prerequisites
## Details can be found in README.md

##### Exercise 2: Functions

n <- as.integer(readline(prompt="Enter n: "))
k <- as.integer(readline(prompt="Enter k: "))

print(k)
print(n)


sumInteger <- function(n) {
  sum
  if (n = 0) {
    sum =  0 
  }
  else {
    return (sum=sumInteger(n-1)+sum)
  }
}

print(sumInteger(n))


sumSquare <- function(n) {
  sum <- 0
  i <- 0
  while (i <= n) {
    sum <- sum + i^2
    i = i + 1
  }
  return(sum)
}

sum2 <- sumSquare(n)

sumSquareTrunc <- function(k,n) {
  sum <- 0
  if (k == n) {
    sum <- k^2 
  }
  if (k <= n) {
    while (k <= n) {
      sum <- sum + k^2
      print(sum)
      k <- k + 1
    }
  }
  if (k == 1) {
    sum <- sumSquare(n)
  }
  return(sum)
}

sum3 <- sumSquareTrunc(k,n)
sum3