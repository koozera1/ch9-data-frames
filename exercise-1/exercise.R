# Exercise 1: creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games
# of the season (google "Seahawks" for the scores!)
seahawk_scores <- c(27, 7, 20, 3)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each of the first 4 games of the season
allowed_to_score <- c(20, 3, 18, 7)

# Combine your two vectors into a dataframe called `games`
games <- data.frame(seahawk_scores, allowed_to_score)

# Create a new column "diff" that is the difference in points between the teams
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
games$diff <- games$seahawk_scores - games$allowed_to_score

# Create a new column "won" which is TRUE if the Seahawks won the game
games$won <- games$diff > 0

# Create a vector of the opponent names corresponding to the games played
opponent <- c("dolphins", "rams", "49ers", "jets")

# Assign your dataframe rownames of their opponents
rownames(games) <- opponent

# View your data frame to see how it has changed!
View(games)
