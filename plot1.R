#Load the data trimmed down to the 2 days in February 2007
dataTrimmed <- read.table('data/household_power_consumption_trimmed.txt')

#Open a png graphic device
png(filename="plot1.png", width=480, height=480, units="px", bg="transparent")

# Create a histogram of the global active power
hist(dataTrimmed$Global_active_power, col="red", main="Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

#Close the graphic device and save a png of the histogram
dev.off()