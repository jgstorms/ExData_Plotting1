#This script trims down the full data set 'household_power_consumption.txt' into a 
#data set containing only measurements from February 1, 2007 to February 2,2007
#NOTE: 'household_power_consumption.txt' can be obtained from the following link:
#https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

dataFull <- read.table(file="household_power_consumption.txt", 
                     header=TRUE, sep=";")

dataTrimmed <- dataFull[as.Date(dataFull$Date, format="%d/%m/%Y")>=as.Date('2007-02-01')
                        & as.Date(dataFull$Date, format="%d/%m/%Y")<=as.Date('2007-02-02'), ]
write.table(dataTrimmed, file='household_power_consumption_trimmed.txt')
