data<-read.csv("household_power_consumption.txt",sep = ";")
dataforgraph<- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

dataforgraph$DateTime<-paste(dataforgraph$Date, dataforgraph$Time)
dataforgraph$DateTime<-strptime(dataforgraph$DateTime, "%d/%m/%Y %H:%M:%S")

png("plot2.png", width=480, height=480)
plot(dataforgraph$DateTime, as.numeric(as.character (dataforgraph$Global_active_power)),type='l',xlab="", ylab="Global Active Power (Kilowatts)" )
dev.off()