## Source code for Exp. Data Analysis Assignment 1 - Coursera 


df <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors = FALSE)

dates <- df$Date

as.Date(dates, "%d/%m/%Y")

date <- c("1/2/2007", "2/2/2007")

dat<- df[which(dates[] %in% date),]

gap <- as.numeric(dat$Global_active_power)

hist(gap, xlab = "Global Active Power [kW]", 
      main = "Global Active Power", col = "red")
