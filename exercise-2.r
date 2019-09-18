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

# Install & load pacman
install.packages("pacman")
require(pacman)
# Use pacman to install and require other packages
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
               ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, 
               stringr, tidyr)

##### Exercise 2: Functions
# a) Sum of integers

# Prompt user for input

int_sum <- function() {
  sum <- 0
  i <- 0
  n <- readline(prompt="Enter n: ")
  n <- as.integer(n)
    while (i <= n) {
    sum <- sum + i
    i <- i + 1
  }
  return(sum)
}

cat('Sum of integers: ', int_sum())

# b) Product of integers

square_sum <- function() {
  sum1 <- 0
  i <- 0
  m <- readline(prompt="Enter m: ")
  m <- as.integer(m)
  while(i <= m){
    sum1 <- sum1 + i*i
    i <- i + 1
  }
  return(sum1)
}

cat('Sum of squares is: ', square_sum())

# (c) k^2 + (k+1)^2 + ... + n^2
# while loop to force input k<=n
check=FALSE
while(check==FALSE) {
    cat('ENTER k AND n, s.t. k<=n...')
    k <- readline(prompt="Enter k: ")
    n <- readline(prompt="Enter n: ")
    k <- as.integer(k)
    n <- as.integer(n)
    if (k<=n) {
        check=TRUE
    }
}

# create sum function
calcium <- function(){
  sum <- 0
  while (k <= n){
    sum <- sum + k*k + 2*k*n + n*n
    k <- k + 1
  } 
  return(sum)
}

cat('Sum is: ', calcium())

# (d) Rewriting function in (c) to call function in (b)

# Clear screen
cat('\014')