<<<<<<< HEAD
## Source code for Exp. Data Analysis Assignment 1 - Coursera 
# Plot 4

par(mfrow=c(2,2), mar= c(3,4,2,2), cex.lab= .8, cex.axis = .8)

df <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors = FALSE)

dates <- df$Date

as.Date(dates, "%d/%m/%Y")

date <- c("1/2/2007", "2/2/2007")

dat<- df[which(dates[] %in% date),]

gap <- as.numeric(dat$Global_active_power)
grp <- as.numeric(dat$Global_reactive_power)

volts <- dat$Voltage

sub1 <- dat$Sub_metering_1
sub2 <- dat$Sub_metering_2
sub3 <- dat$Sub_metering_3

dated <- dat$Date

times <- dat$Time

x <- paste(dated, times)

dat$datetime <- strptime(x, format= "%d/%m/%Y %H:%M:%S")

library(lubridate)

days <- wday(dat$datetime, label=TRUE)

# Top left
plot(dat$datetime, gap, type= "l", xlab = "", ylab = "Global Active Power [kW]")

# Top right
plot(dat$datetime, volts, type= "l", xlab = "", ylab = "Voltage")

# Bottom left
plot(dat$datetime, sub1, type= "l", xlab = "", ylab = "Energy sub metering")
lines(dat$datetime, sub2, type= "l", col="red")
lines(dat$datetime, sub3, type= "l", col="blue")
legend("topright", c("sub 1", "sub 2", "sub 3"), 
       lty=1, col=c("black", "red", "blue"), bty = "n")

# Bottom right
plot(dat$datetime, grp, type= "l", xlab = "datetime", 
      ylab = "Global reactive power")
=======
## Source code for Exp. Data Analysis Assignment 1 - Coursera 
# Plot 4

par(mfrow=c(2,2))

df <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors = FALSE)

dates <- df$Date

as.Date(dates, "%d/%m/%Y")

date <- c("1/2/2007", "2/2/2007")

dat<- df[which(dates[] %in% date),]

gap <- as.numeric(dat$Global_active_power)
grp <- as.numeric(dat$Global_reactive_power)

volts <- dat$Voltage

sub1 <- dat$Sub_metering_1
sub2 <- dat$Sub_metering_2
sub3 <- dat$Sub_metering_3

dated <- dat$Date

times <- dat$Time

x <- paste(dated, times)

dat$datetime <- strptime(x, format= "%d/%m/%Y %H:%M:%S")

library(lubridate)

days <- wday(dat$datetime, label=TRUE)

# Top left
plot(dat$datetime, gap, type= "l", xlab = "", ylab = "Global Active Power [kW]")

# Top right
plot(dat$datetime, volts, type= "l", xlab = "", ylab = "Voltage")

# Bottom left
plot(dat$datetime, sub1, type= "l", xlab = "", ylab = "Energy sub metering")
lines(dat$datetime, sub2, type= "l", col="red")
lines(dat$datetime, sub3, type= "l", col="blue")
legend("topright", c("sub 1", "sub 2", "sub 3"), 
       lty=1, col=c("black", "red", "blue"), bty = "n")

# Bottom right
plot(dat$datetime, grp, type= "l", xlab = "datetime", 
      ylab = "Global reactive power")
>>>>>>> origin/master
