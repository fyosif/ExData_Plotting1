
source("load.R")

png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))	
plot(meteredData$Time, meteredData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
plot(meteredData$Time, meteredData$Voltage, type = "l", xlab = "datetime", ylab = "Global Active Power")
plot(meteredData$Time, meteredData$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(meteredData$Time, meteredData$Sub_metering_2, type="l", col="red")
lines(meteredData$Time, meteredData$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
plot(meteredData$Time, meteredData$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Active Power")
dev.off()