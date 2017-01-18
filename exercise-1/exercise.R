# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
num.points <- c(12, 3, 37, 27, 26, 6, 20, 31, 31, 26, 5, 40, 10, 24, 31, 25, 26, 20)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
points.against <- c(10, 9, 18, 17, 24, 6, 25, 25, 24, 15, 14, 7, 38, 3, 34, 23, 6, 36)

# Combine your two vectors into a dataframe
total <- data.frame(num.points, points.against)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
# diff <- points.against - total
total$diff <- num.points - points.against
diff <- total$diff

# Create a new column "won" which is TRUE if the Seahawks won
# if --> diff is pos, put won, else, put false
total$won <- total$diff > 0

# Create a vector of the opponent names corresponding to the games played
opp.names <- c("Dolphins", "Rams", "49rs", "Jets", "Falcos", "Cardinals", "Saints", "Bills", "PAtriots", "Eagles", "Buccaneers",
              "PAnthers", "PAckers", "Rams", "Cardinals", "49s", "Lions", "Falcons")

# Assign your dataframe rownames of their opponents
rownames(total) <- make.names(opp.names, unique = TRUE)

# View your data frame to see how it has changed!
