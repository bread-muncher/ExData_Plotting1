data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data_subset <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")
date_time<-strptime(paste(data_subset$Date, data_subset$Time), format="%Y-%m-%d %H:%M:%S")
global_active_power <- as.numeric(data_subset$Global_active_power)
png("plot2.png", width=480, height=480)
plot(date_time, global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

