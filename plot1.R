text<-grep("^2/2/2007;|^1/2/2007;",readLines("household_power_consumption.txt"),value = TRUE)
header<-readLines("household_power_consumption.txt",n=1)
header<-unlist(strsplit(header,split=";"))
mydata<-read.table(textConnection(text),sep=";",na.strings = "?")
colnames(mydata)<-header
png("plot1.png", width=480, height=480)
hist(mydata$Global_active_power,col="red",xlab = "Global Active Power (Kilowatts)",ylab = "Frequency",main="Global Active Power")
dev.off()