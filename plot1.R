#this function produces plot1 using data from subsetdata()
plot1<-function(){
        if(!exists('wdata')){
                subsetdata()}
        png('plot1.png')
hist(wdata$Global_active_power,col = 'red',main = 'Global Active Power'
     ,xlab = 'Global Active Power (kilowatts)')
dev.off()
}