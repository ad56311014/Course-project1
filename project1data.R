dataf<-function(){
    if(!file.exists('project1data.zip')){
        fileurl <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
        download.file(fileurl,destfile='project1data.zip')
        unzip('project1data.zip')
}
    data <- read.table('household_power_consumption.txt',na.strings='?',header=TRUE,sep=';')
    dataDate <- as.Date(data$Date, "%d/%m/%Y")
    data <- data[dataDate=='2007/02/01'|dataDate=='2007/02/02',]
    data
}
