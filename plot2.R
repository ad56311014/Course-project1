source('project1data.R')
data <- dataf()
png(filename = "plot2.png",width=480, height=480,units='px')
y <- data$Global_active_power
x <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
plot(x, y, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()
