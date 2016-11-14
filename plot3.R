rm(list = ls())
setwd("C:/Users/Usuario 2/Dropbox/Coursera/Data Science/Exploratory Data Analysis")
Datos<-read.table("./Datos/household_power_consumption.txt",sep = ";",header = TRUE,na.strings = "?")
DatosSub<-subset(Datos, (Date=="1/2/2007" | Date=="2/2/2007" ))

datetime<-paste(DatosSub$Date,DatosSub$Time)
datetime<-strptime(datetime,"%d/%m/%Y %H:%M:%S")

with(DatosSub,plot(datetime,Sub_metering_1, type="l", ylab="Energy Sub Metering",xlab=""))
with(DatosSub,lines(datetime,Sub_metering_2, col = "red"))
with(DatosSub,lines(datetime,Sub_metering_3, col = "blue"))
legend("topright",cex=.5 ,lty = c(1,1,1), col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.copy(png,file="plot3.png")
dev.off()
