# Nguyen Hoang Anh
# John Abbott College, Montreal, CANADA.
# Github: https://github.com/hirumaakane-ha/r-project-2019
# License: MIT License
# Course: Statistics
# Instructor: Luiz T. Kazuo
# This R program and its repository on Github is a course project. This project is built upon the MRCA (Most Recent Common Ancestors) paper by Dr. Chang (Yale University) et al. 
# A copy of Dr. Chang's paper could also be found in this repository.

### Exercise 1: Simulating Probabilities
########## Start of Program ###########
# (a) Rolling a die
#(i) 12-sided die, 500 times, pie chart 
die1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
sample1 <- sample(die1, 500, replace=TRUE)
sample1
for (i in length(sample1)) {
    if (sample1[i] == 1) {
        number1 += 1
    }
    else if (sample1[i] == 2) {
        number1 += 1
    }
    else if (sample1[i] == 3) {
        number1 += 1
    }
    else if (sample1[i] == 4) {
        number1 += 1
    }
    else if (sample1[i] == 5) {
        number1 += 1
    }
    else if (sample1[i] == 6) {
        number1 += 1
    }
    else if (sample1[i] == 7) {
        number1 += 1
    }
    else if (sample1[i] == 8) {
        number1 += 1
    }
    else if (sample1[i] == 9) {
        number1 += 1
    }
    else if (sample1[i] == 10) {
        number1 += 1
    }
    else if (sample1[i] == 11) {
        number1 += 1
    }
    else if (sample1[i] == 12) {
        number1 += 1
    }
}


########## End of Program ############

# Clear screen
cat('\014')