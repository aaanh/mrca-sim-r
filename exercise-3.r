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

###### Exercise 3: Probability Distribution
# This exercise deals with binomial distribution and various other distributions

# (a) Kirkland Cups problem with hypergeometric distribution
total_cups <- 33357600
good_cups <- total_cups/6 # winning cups
bad_cups <- total_cups - good_cups # non-winning cups
kirkland_cups <- 8000 # cups given to kirkland
desired_cups <- 1300 # desired cups to win

cat("dhyper (quantile only) = ", dhyper(desired_cups, good_cups, bad_cups, kirkland_cups))

cat("phyper (cumulative) = ", phyper(desired_cups, good_cups, bad_cups, kirkland_cups))

# (b) Hockey problem with Poisson distribution

# (c) 


# Clear screen
cat('\014')