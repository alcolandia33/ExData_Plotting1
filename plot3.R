Base_df = read.csv2('household_power_consumption.txt')
Base_df[, 1] = as.Date(Base_df[, 1], '%d/%m/%Y')

subset <- subset(Base_df, Date==as.Date('2007-02-01') |Date== as.Date('2007-02-02'))

datetime = strptime(paste(subset$Date, subset$Time), '%Y-%m-%d %T')

plot(datetime, as.numeric(subset$Sub_metering_1), type='l', xlab='', ylab='Energy sub metering')
lines(datetime, as.numeric(subset$Sub_metering_2), type='l', col='red', xlab='', ylab='Energy sub metering')
lines(datetime, as.numeric(subset$Sub_metering_3), type='l', col='blue', xlab='', ylab='Energy sub metering')
legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), lty=1)

dev.copy(png, 'plot3.png', height=480, width=480)
dev.off()
