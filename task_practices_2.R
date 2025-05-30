# This project will lhow to write programs and run simulations in R.
# You will also learn how to:

# Use a practical strategy to design programs

# Use if and else statements to tell R what to do when 

# Create lookup tables to find values

# Use for, while, and repeat loops to automate repetitive operations

# Use S3 methods, R's version of Object-Oriented Programming

# Measure the speed of R code

# Write fast, vectorized R code.

# For Loop
chars <- vector(length = 4)
words <- c("my", "fourth", "for", "loop")
for (i in 1:4){
  chars[i] <- words[i]
}
chars

# CHAPTER 10

# Speed

# Vectorized Code
# the fastest R code will usually take advantage of three things: 
# logical tests, sub-setting, and element-wise execution.

vec <- c(1,-2,3 ,-4, 5, -6, 7, -8,9, -10)
vec[vec <0]

# I have to learn vectorized code in R
