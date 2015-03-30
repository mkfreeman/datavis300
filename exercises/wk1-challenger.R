# Week 1 Exercise: Create a visualization of the Challenger dataand publish it on the web!
# I've written out the syntax of each command following the task, and you should replace ALL_CAPS_WORDS with your variable names

# Install the rChart library: install.packages("PACKAGE_NAME", dependencies=TRUE)

# Install Applined Linear Regression library named alr3: install.packages("PACKAGE_NAME", dependencies=TRUE)

# Load rCharts library:library(LIBRARY_NAME)

# Load al3 library

# Load in data frame named "challeng": data(DATA_FRAME_NAME)
# Variable descriptions live at http://www.stat.cmu.edu/~roeder/stat707/=data/=data/data/Rlibraries/alr3/html/challeng.html

# Use the head command to see the first section of your challeng data frame: head(DATA_FRAME_NAME)

# Look at the Temp column of your challeng data frame: DATA_FRAME$COLUMN_NAME

# Use R's built in plot function to create a scatterplot of the Fail column versus the Temp column: plot(Y_VARIABLE_NAME ~ X_VARIABLE_NAME, data=DATA_FRAME_NAME)


# Make a plot of Fail and Temp using the rCharts function nPlot: myPlot <- nPlot(Y_VARIABLE_NAME ~ X_VARIBLE_NAME, data=DATA_FRAME_NAME, type="scatterChart")

# Display your plot by simply entering your plot name

# If you're short on time, skip to the last step (publish) now

# Change the xAxis label: myPlot$xAxis(axisLabel = "MY_LABEL_NAME").  

# Increase the size of all points:  see http://stackoverflow.com/questions/28755068/increase-point-size-of-all-points-for-rcharts-nvd3/

# Reprint your plot to see changes

# Change the yAxis label using the same syntax

# Remove the legend: myPlot$chart(showLegend=FALSE)

# Publish your chart to the web: myPlot$publish('CHART_NAME', host='rpubs')

