# This file is a continuation from chapter 4 of Hands on practices and will focus
# only on the work examples whiles note will continually be contained in previous
# file.

shuffle <- function(df){
  random <- sample(1:52, size = 52)
  df[random,]
}

deck2 <- shuffle(deck)

# deck4 in pdf is deck3 here
# Exercise
# Assign a value of 1 to every card in deck4 that has a suit of hearts.

deck3 <- deck
deck3$value <- 0
deck3
deck3$suit == "hearts"

deck3$value[deck3$suit == "hearts"] <- 1
tail(deck3)

deck3$face == "queen" & deck3$suit == "spades"
 
deck5 <- deck
head(deck5, 13)

facecard <- deck5$face %in% c("king", "queen", "jack")
deck5[facecard,]
deck5$value[facecard] <- 10
head(deck5, 13)

# Missing Information

# Scoring all ace as NA's
deck5$value[deck5$face == "ace"] <- NA
head(deck5,13)

DECK <- deck
deal <- function(){
  card <- deck[1,]
  deck <- deck[-1,]
  card
}

# Exercise

# Rewrite the deck <- deck[-1,] line of deal to assign deck[-1, ] to an
# object named deck in the global environment. 
deal <- function(){
  card <- deck[1,]
  deck <- assign("deck",deck[-1, ], envir = globalenv())
  card
}
# Now deal will finally clean up the global copy of deck, and we can deal
# cards just as we would in real life

deal()
# Rewrite shuffle so that it replaces the copy of deck that lives in the global 
# environment with a shuffled version of DECK, the intact copy of deck 
# that also lives in the global environment. The new version of shuffle
# should have no arguments and return no output.

shuffle <- function(){
  random <- sample(1:52, size = 52)
  assign("deck", DECK[random, ], envir = globalenv())
}

# Closure
# which are functions linked to objects in protected
# environments.
