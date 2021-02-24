#plot 4
dir.create('figure')
png(filename = "./figure/plot4.png", width = 480, height = 480, units='px')
par(mfrow = c(2, 2))
plot(power$DateTime, power$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
plot(power$DateTime, power$Voltage, xlab = 'datetime', ylab = 'Voltage', type = 'l')
plot(power$DateTime, power$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l')
lines(power$DateTime, power$Sub_metering_2, col = 'red')
lines(power$DateTime, power$Sub_metering_3, col = 'blue')
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering1', 'Sub_metering2', 'Sub_metering3'))
plot(power$DateTime, power$Global_reactive_power, xlab = 'datetime', ylab = 'Global_reactive_power', type = 'l')

dev.off()
