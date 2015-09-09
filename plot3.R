
source("load.R")

png("plot3.png", width = 480, height = 480)
plot(meteredData$Time, meteredData$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(meteredData$Time, meteredData$Sub_metering_2, type="l", col="red")
lines(meteredData$Time, meteredData$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
dev.off()