
d <- read.table("household_power_consumption.txt",sep=";", header=TRUE)

d[,1] <- as.Date(d[,1], format="%d/%m/%Y")

out <- d[     d[,1] == as.Date("2007-02-01") | d[,1] == as.Date("2007-02-02") ,]

#avoid errors ... 
par(mar=c(1,1,1,1))

result <- o[,3]
result <- as.numeric(result)

hist(result, col="red")

dev.copy(png,filename="plot1.png");
dev.off ();