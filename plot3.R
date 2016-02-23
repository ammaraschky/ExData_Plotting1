## Source code for Exp. Data Analysis Assignment 1 - Coursera 

df <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors = FALSE)

dates <- df$Date

## dates <- as.Date(dates, "%d/%m/%Y")

date <- c("1/2/2007", "2/2/2007")

dat<- df[which(dates[] %in% date),]

sub1 <- dat$Sub_metering_1
sub2 <- dat$Sub_metering_2
sub3 <- dat$Sub_metering_3

dated <- dat$Date

times <- dat$Time

x <- paste(dated, times)

dat$datetime <- strptime(x, format= "%d/%m/%Y %H:%M:%S")

library(lubridate)

days <- wday(dat$datetime, label=TRUE)

plot(dat$datetime, sub1, type= "l", xlab = "", ylab = "Energy sub metering")
lines(dat$datetime, sub2, type= "l", col="red")
lines(dat$datetime, sub3, type= "l", col="blue")
legend("topright", c("sub metering 1", "sub metering 2", "sub metering 3"), 
       lty=1, col=c("black", "red", "blue"))
