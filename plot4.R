rm(list = ls())
setwd("C:/Users/Usuario 2/Dropbox/Coursera/Data Science/Exploratory Data Analysis")
Datos<-read.table("./Datos/household_power_consumption.txt",sep = ";",header = TRUE,na.strings = "?")
DatosSub<-subset(Datos, (Date=="1/2/2007" | Date=="2/2/2007" ))

datetime<-paste(DatosSub$Date,DatosSub$Time)
datetime<-strptime(datetime,"%d/%m/%Y %H:%M:%S")

par(mfrow=c(2,2),mar=c(3,4,2,2))
with(DatosSub,plot(datetime,Global_active_power,type = "l",ylab="Global Active Power"))

with(DatosSub,plot(datetime,Voltage,type = "l",ylab="Voltage"))

with(DatosSub,plot(datetime,Sub_metering_1, type="l", ylab="Energy Sub Metering",xlab=""))
with(DatosSub,lines(datetime,Sub_metering_2, col = "red"))
with(DatosSub,lines(datetime,Sub_metering_3, col = "blue"))
legend("topright",cex=.4 ,lty = c(1,1,1),col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

with(DatosSub,plot(datetime,Global_reactive_power,type = "l"))

dev.copy(png,file = "plot4.png")
dev.off()
