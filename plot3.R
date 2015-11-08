data<-read.csv("household_power_consumption.txt",sep = ";")
dataforgraph<- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
dataforgraph$DateTime<-paste(dataforgraph$Date, dataforgraph$Time)
dataforgraph$DateTime<-strptime(dataforgraph$DateTime, "%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480, height=480)
plot(dataforgraph$DateTime, as.numeric(as.character (dataforgraph$Sub_metering_1)),type='l', xlab="", ylab ="Energy sub metering")
     lines(dataforgraph$DateTime, as.numeric(as.character(dataforgraph$Sub_metering_2)),type='l', col='red')
     lines(dataforgraph$DateTime, dataforgraph$Sub_metering_3,type='l', col="blue")
     legend('topright', c ("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
     lty=c(1,1,1),col=c("black","red","blue"))
dev.off()