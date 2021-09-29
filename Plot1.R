

data <- read.csv("household_power_consumption.txt", sep=";", stringsAsFactors = FALSE)

data_sub <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")
data_sub$Global_active_power <- as.numeric(data_sub$Global_active_power)


png('Plot1.png', width=480, height=480)
hist(data_sub$Global_active_power, main = 'Global Active Power', 
     xlab ="Global Active Power (Kilowatts)", ylab="Frequency", col = 'Red')
dev.off()
