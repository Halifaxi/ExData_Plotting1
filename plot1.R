#getting the file
pw <- file(file.choose())
#Reading it in with the relevant restrictions
power <- read.table(text = grep("^[1,2]/2/2007",readLines(pw),value=TRUE), sep = ';', col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = '?')
#creating the graph plot 1
dir.create('figure')
png("./figure/plot1.png", width = 480, height = 480)
hist(power$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()