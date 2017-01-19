# Load R's "USPersonalExpenditure" dataset using the "data()" function
# This will produce a data frame called `USPersonalExpenditure`
data("USPersonalExpenditure")

# The variable USPersonalExpenditure is now accessible to you. Unfortunately,
# it's not a data frame (it's actually what is called a matrix)
# Test this using the `is.data.frame()` function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable as an argument
# to the `data.frame()` function to convert it a data farm. Do this, storing the
# result in a new variable

data <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
colnames(data)

# Why are they so strange? Think about whether you could use a number like 1940
# with dollar notation!

View(data)

# What are the row names of your dataframe?
rownames(data)

# Create a column "category" that is equal to your rownames
data$category <- rownames(data)

# How much money was spent on personal care in 1940?
personal.care.1940 <- data['Personal Care', 'X1940']

data['Personal Care', 'X1940']

# How much money was spent on Food and Tobacco in 1960?
F.T.1960 <- data[1, 'X1960']

# What was the highest expenditure category in 1960?
# Hint: use the `max()` function to find the largest, then compare that to the column
highest.expen <- max(data$X1960)
high.expen.cat <- data[data$X1960 == highest.expen, 'category']

# 1st try; high.expen <- new.data$category[new.data$X1960 == max(new.data$X1960)]

# Define a function `DetectHighest` that takes in a year as a parameter, and
# returns the highest spending category of that year
#DetectHighest <- function(year) {
 # highest.category <- data$category[data$year == max(data$year)]
  #return(highest.category)
#}

DetectHighest <- function(my.year) {
  highest.cat <- data[data[[my.year]] == max(data[[my.year]]), 'category']
  return(highest.cat)
}
DetectHighest("X1960")


# Using your function, determine the highest spending category of each year
DetectHighest("X1940")

my.years <- c("X1940", "X1945", "X1950", "X1955", "X1960")
is.vector(my.years)
DetectHighest(c("X1940", "X1945"))
print(DetectHighest("X1945"))
