# Moran process

n <- 100

simulate_moran <- function(n) {
    population <- c(rep(0, n-1), 1)
    #print(population)
    k <- 0
    while (!(all(population == c(rep(0, n))) | all(population == c(rep(1, n))))) {
        k <- k+1
        population[sample(c(1:n), 1, replace=FALSE)] <- population[sample(c(1:n), 1, replace=FALSE)]
        #print(population)
    }
    return(list("generations" = k, "dominant" = population[1]))    
}

dom0 <- 0
dom1 <- 0

for (i in 1:1000) {
    print(i) 
    moran <- simulate_moran(n)
    if (moran$dominant == 0) {
        dom0 <- dom0 + 1
    }
    else if (moran$dominant == 1) {
        dom1 <- dom1 + 1
    }
}

cat("Type 0 dominance: ", dom0, "\n")
cat("Type 1 dominance: ", dom1, "\n")