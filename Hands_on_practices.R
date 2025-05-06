# R basics

#load tidyverse library
library(tidyverse)

# Functions; is a reusable block of code that performs a specific task
# function_name <- function(){}
secobd <- function() {
  sfadadf <- function(round) {
    x <- 1: 13
    sample(x[x > 13])
    args(round)
  }
}

sample(die, size = 2, replace = TRUE)


roll <- function(){
  dice <- sample(x = die, size = 2, replace = TRUE,
                 prob = c(2/5,2/6,2/6,4/7,3/5,3/7))
  sum(dice)
}
roll()

# Packages are preassembled collection of functions and objects.
# To install a package; install.packages("package_name")

# Library: 
# To load a package; library("package_name")
library("ggplot2")

x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
y <- x^3
qplot(y,x)

# Scatter Plot; are useful for visualizing the relationship between 2 variables

# Histogram;  A histogram visualizes the distribution of a single variable;
#  it displays how many data points appear at each value of x

rolls <- replicate(100,roll())
qplot(rolls,binwidth = 1)

?sample
#trial


