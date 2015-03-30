# Airline model
fileName <- '/Applications/MAMP/htdocs/data-538/airline-safety/airline-safety.csv'
data <- read.csv(fileName)
m1 <- lm(data$fatalities_00_14~data$fatalities_85_99)
data$fatalities_00_14_adjusted <- data$fatalities_00_14/data$avail_seat_km_per_week
data$fatalities_85_99_adjusted <- data$fatalities_85_99/data$avail_seat_km_per_week
plot(data$fatalities_00_14_adjusted ~ data$fatalities_85_99_adjusted )

