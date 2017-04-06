# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbels <- c("purple", "gold", "beige", "blue", "green", "red")

# Use the `sample` function to select a single marble
sample(marbels, 1, replace = FALSE, prob = NULL)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(guess) {
  marble <- sample(marbels, 1, replace = FALSE, prob = NULL)
  if(marble == guess) {
    print("You Got it")
    return(TRUE)
  }else {
    print("Wrong!")
    return(FALSE)
  }
}

# Play the marble game!
MarbleGame("gold")

# Bonus: Play the marble game until you win, keeping track of how many tries you take
Play <- function(guess){
  counter <- 0
  correct <- FALSE
  while(correct == FALSE) {
    counter++
    if(MarbleGame(guess) == TRUE) {
      correct <- TRUE
    }
  }
  print(counter)
}

Play("gold")

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability