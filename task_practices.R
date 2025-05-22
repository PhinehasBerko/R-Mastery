# This file is a continuation from chapter 4 of Hands on practices and will focus
# only on the work examples whiles note will continually be contained in previous
# file.

shuffle <- function(df){
  random <- sample(1:52, size = 1)
  df[random,]
}