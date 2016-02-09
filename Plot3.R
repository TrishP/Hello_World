# Set working Directory
setwd("c:/data")

# Load data from file
HousePower <- read.table( file = "household_power_consumption_Feb2007.txt", sep = ";", header = TRUE)

# Get Date to a Useable format
alldate <- paste(HousePower$Date, HousePower$Time)
alldateformat <- strptime(alldate, "%d/%m/%Y %T")
HousePower$Date <- alldateformat

#Create the plot in a .png file

png(filename = "Plot3.png", width = 480, height = 480)

plot(HousePower$Date, HousePower$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l")
lines(HousePower$Date, HousePower$Sub_metering_2, col = "red")
lines(HousePower$Date, HousePower$Sub_metering_3, col = "blue")
legendNames <- names(HousePower)[7:9]
legendColors <- c("black", "red", "blue")
legend("topright", legendNames, col = legendColors, lty = c(1, 1, 1))

dev.off()
