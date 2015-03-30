# Exercise for simulating decision based on prizes and probabilities
# Interactive example here: https://mfviz.shinyapps.io/expectedValue/

# Use the rCharts library


# Create variables to store the probabilities, prize values, and simulation size you want to use for 2 cases: pr1, prize1, size.


# Write a function to simulate winnings using the variables probability (pr), prize value (prize), and simulation size (size)

#### Start function
  # Use the rbinom function to simulate a series of wins (1) and loses (0)
 
  
  # Give those winners the amount of prize money they've won
  
  
  # Calculate the cumulative sum of the winnings using the 'cumsum' command
  
  
  # Create a variable "trails" from 1 to SIZE that tracks the index of the trial using the 'seq' command
  
  
  # Calculate the average value of the bet after N trails
  
  
  # Return the value vector you created
  
  # all in one line (?!)
  
#### End function

# Create simluated datasets using the simulateData function and the input parameters specified above


# Plot using the plot command


# Plot using rCharts
