# R basics

#load tidyverse library
library(tidyverse)

library(devtools)

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
#doubles, integers, characters, logical, complex, and raw

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
length(text)
is.character(text)
is.atomic(text)
is.integer(text)

#Logicals
# Logical vectors store TRUEs and FALSEs, R’s form of Boolean 

# Complex and Raw
# Complex vectors store complex numbers. To create a complex vector, add an imaginary
#term to a number with i:

comp <- c(1 + 1i, 1 + 2i, 1 + 3i)
comp

#  Raw vectors store raw bytes of data.
raw(3) #  00 00 00

#Attributes
#An attribute is a piece of information that you can attach to an atomic vector (or any R
#object)
#You can think of an attribute as “metadata”; it is just a
# convenient place to put information associated with an object

attributes(die) ## NULL

# Names
# The most common attributes to give an atomic vector are names, dimensions (dim)
# class. Each of these attributes has its own helper function that you can use 
# to give attributes to  an object
# You can also use names to change the names attribute or remove it all together
names(die) # names() is used to look-up name attribute for an object

# To change the names, assign a new set labels to names
names(die) <- c("one", "two ", "three", "four", "five","six")
names(die) <- c('uno','dos', "tres","quatro",'cinco',"seis")
names(die["one"])
die

# To remove the names attribute, set it to NULL
names(die) <- NULL

# Dim
# You can transform an atomic vector into an n-dimensional array by giving it a
# dimensions attribute with dim
dim(die) <-c(2,3) # this is a 2 X 3 matrix
dim(die) <- c(1,2,3)
die

# Matrices
# Matrices store values in a two-dimensional array.
# byrow = TRUE is an argument that fill the matrix row by row if you include it.

m <- matrix(die, nrow = 2, ncol= 3, byrow = TRUE)
m 
?matrix

#Arrays
# The array function creates an n-dimensional array.
flushCard <- c("ace","king","queen","jack","ten","spades","spades","spades","spades","spades")
dim(flushCard) <-c(5,2)
flushCard
matrix(flushCard, nrow = 5)

# Class

currentTime <-Sys.time()
currentTime
typeof(currentTime)

class(currentTime)
unclass(currentTime)

#Factors
# Factors are R's way of storing categorical information, like ethnicity or 
# eye color.
# Factors make it easy to put categorical variable into a statistical model becos
# the variables are already coded as numbers.
gender <- factor(c("male","female","female","male"))

typeof(gender)

attributes(gender)

# you can see exactly how R is storing your factor with unclass
unclass(gender)

# Card
card <- c("ace","hearts", 1)
card
typeof(card)
class(card)

#Coercion


# List
#Lists are like atomic vectors because they group data into a one-dimensional set. 
list1 <- list(100:130, "R", list(TRUE, FALSE))
list1
list1[[1]][[23]]

cardList <- list("ace", "hearts",1)
cardList

# Data Frames
# Data frames are the two-dimensional version of a list. 
# Data frames group vectors together into a two-dimensional table. Each vector
# becomes a column in the table.
#Data frames store data as a sequence of columns. Each column can be a
# different data type. Every column in a data frame must be the same length

df <- data.frame(
  face = c("king", "queen", "jack", "ten", "nine", "eight", "seven", "six",
           "five", "four", "three", "two", "ace", "king", "queen", "jack", "ten",
           "nine", "eight", "seven", "six", "five", "four", "three", "two", "ace",
           "king", "queen", "jack", "ten", "nine", "eight", "seven", "six", "five",
           "four", "three", "two", "ace", "king", "queen", "jack", "ten", "nine",
           "eight", "seven", "six", "five", "four", "three", "two", "ace"),
  suit = c("spades", "spades", "spades", "spades", "spades", "spades",
           "spades", "spades", "spades", "spades", "spades", "spades", "spades",
           "clubs", "clubs", "clubs", "clubs", "clubs", "clubs", "clubs", "clubs",
           "clubs", "clubs", "clubs", "clubs", "clubs", "diamonds", "diamonds",
           "diamonds", "diamonds", "diamonds", "diamonds", "diamonds", "diamonds",
           "diamonds", "diamonds", "diamonds", "diamonds", "diamonds", "hearts",
           "hearts", "hearts", "hearts", "hearts", "hearts", "hearts", "hearts",
           "hearts", "hearts", "hearts", "hearts", "hearts"),
  value = c(13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 13, 12, 11, 10, 9, 8,
            7, 6, 5, 4, 3, 2, 1, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 13, 12, 11,
            10, 9, 8, 7, 6, 5, 4, 3, 2, 1))

df

# Loading Data
# name <- read.file_type(path/to/file) file_type can be .csv, .xml, etc

# Saving data
# write.csv(object_name, file = "file_name.extension" , row.names = FALSE)

# To get my current working directory 
getwd()

# Summary
#R’s most common data structures are vectors, matrices, arrays, lists, and data
# frames
head(df)
tail(df)

# CHAPTER 4

# R Notation

# Selecting values
# To extract a value or set of values from a data frame, write the data frame's
# name followed by a pair of hard brackets: df[,] between the brackets will go 
# two indexes seperate by a comma. This tell R which values to return.

# NOTE: R will use the 1st index to subset the "rows" and the 2nd "columns" of 
# the data frame
df[0:2,1:2]

# There are 6 ways of indexing in R, these are;
#• Positive integers
#• Negative integers
#• Zero
#• Blank spaces
#• Logical values
#• Names

# Positive Integers
#R treats positive integers just like ij notation in linear algebra: df[i,j] 
#will return the value of df that is in the ith row and the jth column

# df[1, c(1, 2, 3)] or df[1, 1:3]; these return 1 row with 3 columns in the df

# NOTE : Repetition
# If you repeat a number in your index, R will return the corresponding 
# value(s) more than once in your “subset.” 

# Negative Integers
# Negative integers do the exact opposite of positive integers when indexing. 
# R will return every element except the elements in a negative index

# For example, df[-1, 1:3] will return everything but the first row of df.
# df[-(2:52), 1:3] will return the first row (and exclude everything else)

# Negative integers are a more efficient way to subset than positive integers 
# if you want to include the majority of a data frame’s rows or columns

# Zero
#  R will return nothing from a dimension when you use zero as an index.
# This creates an empty object:

# Blank Spaces
# You can use a blank space to tell R to extract every value in a dimension. 
# This lets you subset an object on one dimension but not the others, 
# which is useful for extracting entire rows or columns from a data frame:

# deck[1, ]

#  Logical Values
# If you supply a vector of TRUEs and FALSEs as your index, R will match each 
# TRUE and FALSE to a row in your data frame (or a column depending on where 
# you place the index).

# Names
# Finally, you can ask for the elements you want by name
# —if your object has names 
#  This is a common way to extract the columns of a data frame,
# since columns almost always have names:
#  deck[1, c("face", "suit", "value")]

# function to return the 1st row in a dataframe
dealer <- function(df){
  df[1,]
}


# Shuffle the Dataset
# write a function to reshuffle the df and return the 1st row.
shuffle <- function(df){
  random <- sample(1:52, size = 1)
  
  df[random,]
}

# Dollar Signs and Double Brackets

df$value

mean(df$value)

median(df$value)

mean(df[["value"]])
summary(df)

# CHAPTER 5
# Modifying values
deck <- df
head(deck)

# Changing Values in Place
deck[1,3] <- 13
deck$new <- NULL

# You can also remove columns from a data frame (and elements from a list) by assigning
# them the symbol NULL
deck[c(13,26,39,52),]

# Change values 
deck$value[c(13,26,39,52)] <-14

# Logical Subsetting

#  Logical Tests and Logical operators

# a > b; a >= b; a == b; a != b; 
# %in% a %in% c(a, b, c) is a in the group c(a, b, c)?

deck2$face == "ace"
sum(deck2$face == "ace")

deck2$value[deck2$face == "ace"]
deck2$value[deck2$face == "ace"] <- 14

#To summarize, you can use a logical test to select values within an object.

# Logical sub-setting is a powerful technique because it lets you quickly identify, extract,
# and modify individual values in your data set. When you work with logical sub-setting,
# you do not need to know where in your data set a value exists. You only need to know
# how to describe the value with a logical test.

# Boolean Operators
#  Boolean Operators
# Boolean operators are things like and (&) and or (|). They collapse the 
# results of multiple logical tests into a single TRUE or FALSE.
# R has six boolean operators.

# For example;

# &   >> (cond1 & cond2) ==> Are both cond1 and cond2 true?
# |   >> (cond1 pipe cond2) ==> is one or more of cond1 and cond2 true?
# xor >> xor(cond1, cond2) ==> is exactly one of cond1 and cond2?
#!    >> !cond1 ==> is cond1 false? (e.g., ! flips the results of a logical test
#any  >> any(cond1, cond2, cond3,...) ==> are any of the conditions true?
#all  >> all(cond1, cond2, ...) ==> are all of the condtions true?


# Example
w <- c(-1,0,1)
x <- c(5, 15)
y <- "February"
z <- c("Monday","Tuesday", "Friday")

all(z %in% c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday",
             "Saturday", "Sunday"))

# Missing Information

# NA => Not Available; it is used to replace missing data

# na.rm => remove NA is an optional argument in most functions in R
mean(c(NA, 1:50), na.rm = TRUE)

# is.na => a function that can test whether a value is an NA. 
is.na(c(NA, 1:6))
## TRUE FALSE FALSE FALSE FALSE FALSE FALSE


# Environment System
parenvs(all = TRUE)
as.environment("package:stats")
as.environment("package:devtools")
globalenv()

baseenv()

emptyenv()

parent.env(globalenv())

parent.env(emptyenv())


#You can view the objects saved in an environment with ls or ls.str. 
#ls will return just the object names, but ls.str will display a
#little about each object’s structure

ls(emptyenv())

ls(globalenv())

ls.str(globalenv()) # This will display a little about each object's structure.

#You can use R’s $ syntax to access an object in a specific environment.
head(globalenv()$deck, 3)

#And you can use the assign function to save an object into a particular environment

# 1st: give assign the name of the new object (as a character string)
# 2nd: give assign the value of the new object 
# 3rd: and finally the environment to save the object in
assign("new","Hello Global", envir = globalenv())
globalenv()$new

#  You can use environment to see the current active environment:
environment()

show_env <- function(){
  list(ran.in.2 = environment(),
       parent = parent.env(environment()),
       objects = ls.str(environment()))
}
show_env()

