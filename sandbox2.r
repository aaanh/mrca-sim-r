n <- 3
a <- b <- c <- c(0,0)
# enumerate gen(-1)
a <- sample(1:n, 2, replace=FALSE)
b <- sample(1:n, 2, replace=FALSE)
c <- sample(1:n, 2, replace=FALSE)
# enumerate gen(-2)
dummy <- a
dummy
dummy <- c(a, sample(1:n, 2, replace=FALSE))
dummy
union(dummy, c(a, sample(1:n, 2, replace=FALSE)))
a <- a + sample(1:n, 2, replace=FALSE)
b <- b + sample(1:n, 2, replace=FALSE)
b <- b + sample(1:n, 2, replace=FALSE)