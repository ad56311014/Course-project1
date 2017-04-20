source('project1data.R')
data <- dataf()
png(filename='plot4.png',width = 480, height = 480, units='px')
par(mfrow=c(2,2))

y <- data$Global_active_power
x <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
plot(x, y, type = "l", ylab = "Global Active Power", xlab = "")

x <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")
y <- data$Voltage
plot(x,y, type='l',ylab='Voltage',xlab='datetime')

x <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")
plot(x,data$Sub_metering_1,col = 'black',type='l',ylab='Energy sub metering',xlab='')
lines(x,data$Sub_metering_2,col='red')
lines(x,data$Sub_metering_3,col='blue')
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

y <- data$Global_reactive_power
x <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
plot(x, y, type = "l", ylab = "Global_reactive_power", xlab = "datetime")
dev.off()
