rm(list = ls())
setwd("C:/Users/Usuario 2/Dropbox/Coursera/Data Science/Exploratory Data Analysis")
Datos<-read.table("./Datos/household_power_consumption.txt",sep = ";",header = TRUE,na.strings = "?")
DatosSub<-subset(Datos, (Date=="1/2/2007" | Date=="2/2/2007" ))

datetime<-paste(DatosSub$Date,DatosSub$Time)
datetime<-strptime(datetime,"%d/%m/%Y %H:%M:%S")
with(DatosSub,plot(datetime,Global_active_power,xlab="",type = "l",ylab="Global Active Power (Kilowatts)"))

dev.copy(png,file="plot2.png")
dev.off()
