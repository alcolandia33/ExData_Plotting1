Base_df = read.csv2('household_power_consumption.txt')
Base_df[, 1] = as.Date(Base_df[, 1], '%d/%m/%Y')

subset <- subset(Base_df, Date==as.Date('2007-02-01') |Date== as.Date('2007-02-02'))

hist(as.numeric(subset$Global_active_power), col='red', main='Global Active Power', xlab='Global Active Power (kilowatts)')


dev.copy(png, 'plot1.png', height=480, width=480)
dev.off()