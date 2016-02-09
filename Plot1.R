# Set working Directory
setwd("c:/data")

# Load data from file
HousePower <- read.table( file = "household_power_consumption_Feb2007.txt", sep = ";", header = TRUE)

# Get Date to a Useable format
alldate <- paste(HousePower$Date, HousePower$Time)
alldateformat <- strptime(alldate, "%d/%m/%Y %T")
HousePower$Date <- alldateformat

#Create the plot in a .png file

png(filename = "Plot1.png", width = 480, height = 480)

hist(HousePower$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()