## Source code for Exp. Data Analysis Assignment 1 - Coursera 
# Plot 2

par(mar= c(3,4,2,2), cex.lab= .8, cex.axis = .8)

df <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors = FALSE)

dates <- df$Date

## dates <- as.Date(dates, "%d/%m/%Y")

date <- c("1/2/2007", "2/2/2007")

dat<- df[which(dates[] %in% date),]

gap <- as.numeric(dat$Global_active_power)

dated <- dat$Date

times <- dat$Time

x <- paste(dated, times)

dat$datetime <- strptime(x, format= "%d/%m/%Y %H:%M:%S")

library(lubridate)

days <- wday(dat$datetime, label=TRUE)

plot(dat$datetime, gap, type= "l", xlab = "", ylab = "Global Active Power [kW]")
