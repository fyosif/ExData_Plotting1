setwd("D:\YosifDir\coursera\exploratory  data\ExData_Plotting1")
filedata <- "D:\YosifDir\coursera\exploratory  data\ExData_Plotting1\household_power_consumption.txt"
meteredData <- read.table(filedata, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
meteredData$Time <- strptime(paste(meteredData$Date, meteredData$Time), "%d/%m/%Y %H:%M:%S")
meteredData$Date <- as.Date(meteredData$Date, "%d/%m/%Y")
febFilter <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
meteredData <- subset(meteredData, Date %in% febFilter)
