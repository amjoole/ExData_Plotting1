#this function subsets the data for 1st and 2nd of february of 2007 and
#saves the results in global variable "wdata".
subsetdata<-function(){
#the data file should be inside our working directory
#reading the data with necessary variables
fdir<-getwd()
fdir<-paste(ddir,'/household_power_consumption.txt',sep = '')
mydata<-read.csv(fdir,sep = ';',na.strings = '?')
#subseting wanted data
wdata<<-subset(mydata,mydata$Date=='1/2/2007'|mydata$Date=='2/2/2007')
#converting data column formats
wdata$Date<<-paste(wdata$Date,wdata$Time)
wdata$Date<<-strptime(wdata$Date,'%d/%m/%Y %H:%M:%S')
}