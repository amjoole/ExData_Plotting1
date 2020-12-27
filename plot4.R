#this function produces plot4 using data from subsetdata()
plot4<-function(){
        if(!exists('wdata')){
        subsetdata()}
        png('plot4.png')
        par(mfcol=c(2,2))
        #plot2
        with(wdata,plot(Date,Global_active_power,type='l',
                        xlab='',ylab = 'Global Active Power (kilowatts)'))
        #plot3
        with(wdata,plot(Date,Sub_metering_1,type='l',
                        xlab='',ylab = 'Energy sub metering'))
        with(wdata,points(Date,Sub_metering_2,type='l',col='red'))
        with(wdata,points(Date,Sub_metering_3,type='l',col='blue'))
        legend('topright', col = c('black','red','blue'), lty=1,
               cex=0.7,legend=c('Sub_metering_1','Sub_metering_2'
                                ,'Sub_metering_3'),bty='n')
        #next plot
        with(wdata,plot(Date,Voltage,type='l',
                        xlab='datetime'))
        #next plot
        with(wdata,plot(Date,Global_reactive_power,type='l',
                        xlab='datetime'))
        dev.off()
        #return mfcol to default value
        par(mfcol=c(1,1))
}