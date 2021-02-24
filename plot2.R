#plot 2
dir.create('figure')
power$Date <- as.Date(power$Date, format = '%d/%m/%Y')
power$DateTime <- as.POSIXct(paste(power$Date, power$Time))
png(filename = './figure/plot2.png', width = 480, height = 480, units='px')


plot(power$DateTime, power$Global_active_power, xlab =" ", ylab = "Global Active Power (kilowatts)", type = "l")
dev.off()