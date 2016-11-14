rm(list = ls())
setwd("C:/Users/Usuario 2/Dropbox/Coursera/Data Science/Exploratory Data Analysis")
Datos<-read.table("./Datos/household_power_consumption.txt",sep = ";",header = TRUE,na.strings = "?")
DatosSub<-subset(Datos, (Date=="1/2/2007" | Date=="2/2/2007" ))

##1
with(DatosSub,hist(Global_active_power, main = "Global Active Power", col = "red", xlab="Global Active Power (kilowatts)"))
dev.copy(png,file="plot1.png")
dev.off()
