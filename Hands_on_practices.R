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

#Atomic Vector
#  An atomic vector is just a simple vector of data.

#R recognizes six basic types of atomic vectors:
#doubles, integers, characters, logicals, complex, and raw

#Double
#A double vector stores regular numbers. The numbers can be positive or negative, large
#or small, and have digits to the right of the decimal place or not
die <- 1:6
class(die) # "integer"
typeof(die) # "integer"

die2 <- c(1,2,3,4,5,6)
class(die2) # "numeric"
typeof(die2)# "double"

#Some R functions refer to doubles as “numerics,” and I will often do the same. Double
#is a computer science term. It refers to the specific number of bytes your computer uses
#to store a number
sqrt(2)^2 - 2

# Integer
#Integer vectors store integers, numbers that can be written without a decimal compo
# nent.
int <- c(-1L, 2L, 4L)
int
class(int) # "integer"
typeof(int) # "integer"

# Character

# A character vector stores small pieces of text. You can create a character vector in R by
#typing a character or string of characters surrounded by quotes:

text <- c("Hello",  "World")
text

#Logicals
# Logical vectors store TRUEs and FALSEs, R’s form of Boolean 

# Complex and Raw
# Complex vectors store complex numbers. To create a complex vector, add an imaginary
#term to a number with i:

comp <- c(1 + 1i, 1 + 2i, 1 + 3i)
comp

#  Raw vectors store raw bytes of data.
raw(3) #  00 00 00

