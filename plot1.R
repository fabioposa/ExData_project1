data<-read.csv("household_power_consumption.txt",sep = ";")
dataforgraph<- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot1.png", width=480, height=480)
hist(as.numeric(dataforgraph$Global_active_power), main="Global Active Power", xlab="Global Active Power (kilowatts)",col="red")
dev.off()