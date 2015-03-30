# Make a choropleth map of life expectancy data
# Downloaded from http://www.healthdata.org/sites/default/files/files/data_for_download/2013/USHealth/IHME_USHealth_UNITED%20STATES_le_ob_pa_.xlsx, saved first sheet as .csv file

# Install packackes "choroplethr", 'choroplethrMaps', 'RColorBrewer'
install.packages('choroplethrMaps')
install.packages('choroplethr')

# Library packages "choroplethr", 'choroplethrMaps', 'RColorBrewer'
library(choroplethr)
library(choroplethrMaps)
library(RColorBrewer)

# Read in data: VAR_NAME <- read.csv("FILE_NAME.CSV")
le_data <- read.csv('/Applications/MAMP/htdocs/datavis300/exercises/data/life_expectancy.csv')

# Read in the county names that you'll need using the "data" command: data(county.regions)
data(county.regions)
head(county.regions)

# Now we'll need to format and merge our data to match the county.regions variable.  See data format requirements here: http://cran.r-project.org/web/packages/choroplethr/vignettes/c-county-choropleth.html

# First, you'll need to create a column (county.name) that is equal to your MY_DATA$County variable
le_data$county.name <- le_data$County

# Use the "tolower" command to make your MY_DATA$county.name variable all lower case
le_data$county.name <- tolower(le_data$county.name)

# Now, use the "gsub" command to replace the characters " County" and " Parish" with an empty string "". 
# For syntax, see http://www.endmemo.com/program/R/gsub.php or google
le_data$county.name <- gsub(" County", "", le_data$county.name)
le_data$county.name <- gsub(" Parish", "", le_data$county.name)

# Create a new column (state.name) that is equal to the lowercase of your $State column
le_data$state.name <- tolower(le_data$State)

# Use the merge command to create a new variable (mergeData).  Merge together MY_DATA and county.regions on the variables county.name and state.name.
# For syntax, see http://www.statmethods.net/management/merging.html
mergeData <- merge(le_data, county.regions, by=c("county.name", "state.name"))

# Create a data frame MAP_VALUES that has two columns ("region", and "value") from your mergeData variable
mapValues <- data.frame(region=mergeData$region, value=mergeData$Male.life.expectancy..1995..years)

# Create a choropleth map using county_choropleth(mapValues)
county_choropleth(mapValues)

# Change the color pallete by adding this to the line above: + scale_fill_brewer(palette="RdBu")
county_choropleth(mapValues) + scale_fill_brewer(palette="RdBu")

