# Exercise for simulating decision based on prizes and probabilities
# Interactive example here: https://mfviz.shinyapps.io/expectedValue/

# Use the rCharts library
require(rCharts)

# Create variables to store the probabilities, prize values, and simulation size you want to use for 2 cases: pr1, prize1, size.
pr1 <- .2
pr2 <- .4
prize1 <- 1000
prize2 <- 500
size <- 100

# Write a function to simulate winnings using the variables probability (pr), prize value (prize), and simulation size (size)
simulateData <- function(pr=.5, prize=1000,size=100) {
  # Use the rbinom function to simulate a series of wins (1) and loses (0)
  winners <- rbinom(size,1, pr)
  
  # Give those winners the amount of prize money they've won
  winners <- winners * prize
  
  # Calculate the cumulative sum of the winnings using the 'cumsum' command
  totalWinnings <- cumsum(winners)
  
  # Create a variable "trials" from 1 to SIZE that tracks the index of the trial using the 'seq' command
  trials <- seq(1,size)
  
  # Calculate the average value of the bet after N trials
  values <- totalWinnings/trials
  
  
  # Return the value vector you created
  return (values)
  
  # all in one line (?!)
  # return (cumsum(rbinom(size, 1, pr)*prize)/seq(1,size))
}

# Create simluated datasets using the simulateData function and the input parameters specified above
dat1 <- simulateData(pr1, prize1, size)
dat2 <- simulateData(pr2, prize2, size)

# Plot using the plot command
plot(dat1, type="l", col="green",ylim=range(c(0,prize1)))
lines(dat2, type="l", col="red")

# Plot using rCharts
id <- seq(1, length(dat1))
plotData <- data.frame(dat1, dat2, id)
m1 <- mPlot(x = "id", y = c("dat1", "dat2"), type = "Line", data = plotData)
m1$set(pointSize = 0, lineWidth = 1)
m1$show()
