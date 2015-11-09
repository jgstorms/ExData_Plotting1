#Load the data trimmed down to the 2 days in February 2007
dataTrimmed <- read.table('data/household_power_consumption_trimmed.txt')

#Open a png graphic device
png(filename="plot4.png", width=480, height=480, units="px", bg="transparent")

#Set the plot window to have 2 rows and 2 columns
par(mfrow=c(2,2))

###Top left
#Plot the global active power as a function of time
plot(1:nrow(dataTrimmed), dataTrimmed$Global_active_power, type='l',
     main='', xaxt='n', xlab='', ylab='Global Active Power')

#Add axis tick marks for the days of the week
axis(1, at=c(1,nrow(dataTrimmed)/2,nrow(dataTrimmed)), labels=c('Thu','Fri','Sat'))


###Top right
#Plot the global active power as a function of time
plot(1:nrow(dataTrimmed), dataTrimmed$Voltage, type='l',
     main='', xaxt='n', xlab='datetime', ylab='Voltage')

#Add axis tick marks for the days of the week
axis(1, at=c(1,nrow(dataTrimmed)/2,nrow(dataTrimmed)), labels=c('Thu','Fri','Sat'))



###Bottom left
matplot(1:nrow(dataTrimmed), dataTrimmed[,7:9], type=c('l','l','l'), lty=c(1,1,1),
        col=c('black','red','blue'), xaxt='n', xlab='', ylab='Energy sub metering')

#Add axis tick marks for the days of the week
axis(1, at=c(1,nrow(dataTrimmed)/2,nrow(dataTrimmed)), labels=c('Thu','Fri','Sat'))

legend('topright', lty=c(1,1,1), box.lwd=0, col=c('black','red','blue'), 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))



###Bottom right
#Plot the global active power as a function of time
plot(1:nrow(dataTrimmed), dataTrimmed$Global_reactive_power, type='l',
     main='', xaxt='n', xlab='datetime', ylab='Global_reactive_power')

#Add axis tick marks for the days of the week
axis(1, at=c(1,nrow(dataTrimmed)/2,nrow(dataTrimmed)), labels=c('Thu','Fri','Sat'))


#Close the graphic device and save a png of the histogram
dev.off()



