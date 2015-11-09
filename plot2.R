#Load the data trimmed down to the 2 days in February 2007
dataTrimmed <- read.table('data/household_power_consumption_trimmed.txt')

#Open a png graphic device
png(filename="plot2.png", width=480, height=480, units="px", bg="transparent")

#Plot the global active power as a function of time
plot(1:nrow(dataTrimmed), dataTrimmed$Global_active_power, type='l',
     main='', xaxt='n', xlab='', ylab='Global Active Power (kilowatts)')

#Add axis tick marks for the days of the week
axis(1, at=c(1,nrow(dataTrimmed)/2,nrow(dataTrimmed)), labels=c('Thu','Fri','Sat'))

#Close the graphic device and save a png of the histogram
dev.off()
