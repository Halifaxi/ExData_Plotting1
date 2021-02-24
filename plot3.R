#plot 3
dir.create('figure')
power$Date <- as.Date(power$Date, format = '%d/%m/%Y')
power$DateTime <- as.POSIXct(paste(power$Date, power$Time))
png(filename = './figure/plot3.png', width = 480, height = 480, units='px')


plot(power$DateTime, power$Sub_metering_1, xlab =" ", ylab = "Energy sub metering", type = "l")
lines(power$DateTime, power$Sub_metering_2, col = "red")
lines(power$DateTime, power$Sub_metering_3, col = 'blue')
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1))

dev.off()