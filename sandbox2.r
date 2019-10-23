n <- 5

# suppose there is an arbitrary gen(x) as  the current gen
# the enumerator function is going to choose the gen(x-1)

init <- function(n) {
    g <- list()
    for (i in 1:n) {
        g <- c(g, list(sample(1:n, 2, replace=TRUE)))    
    }
    return(g)         
}

g <- init(n)
print(g)

gen_x <- function(g, n) {
    for (i in 1:n) {
        g[[i]] <- union(g[[i]], sample(1:n, 2, replace=TRUE)) 
    }
    return(g)
}

g <- gen_x(g, n)

gencounter <- 0

yesmrca <- FALSE

while (yesmrca <- FALSE) {
    for (i in 1:n) {
        if (length(g[[i]]) != n) {
            g <- gen_x(g, n)
            gencounter <- gencounter + 1
        }
        else {
            yesmrca <- FALSE
        }
}
}
print(g)
print(gencounter)