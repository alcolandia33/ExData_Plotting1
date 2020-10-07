Base_df = read.csv2('household_power_consumption.txt')
Base_df[, 1] = as.Date(Base_df[, 1], '%d/%m/%Y')

subset <- subset(Base_df, Date==as.Date('2007-02-01') |Date== as.Date('2007-02-02'))

datetime = strptime(paste(subset$Date, subset$Time), '%Y-%m-%d %T')


plot(datetime, as.numeric(subset$Global_active_power), type='l', xlab='', ylab='Global Active Power (kilowatts)')
dev.copy(png, 'plot2.png', height=480, width=480)
dev.off()

