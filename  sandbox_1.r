n <- readline(prompt("Enter n: "))
n <- as.integer(n)
k <- readline(prompt("Enter k: "))
k <- as.integer(k)

sumInteger <- function(n) {
  i <- 0
  sum <- 0
  while (i <= n) {
    sum <- sum + i
  }
  return(sum)
}

sum1 <- sumInteger(n)

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
  else if (k <= n) {
    while (k <= n) {
      sum <- sum + k^2
      print(sum)
      k <- k + 1
    }
  }
  else if (k == 1) {
    sum <- sumSquare(n)
  }
  else {
    sum <- 1
  }
  return(sum)
}

sum3 <- sumSquareTrunc(k,n)
sum3
