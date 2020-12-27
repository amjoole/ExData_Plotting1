#this function produces plot3 using data from subsetdata()
plot3<-function(){
        if(!exists('wdata')){
                subsetdata()}
        png('plot3.png')
        with(wdata,plot(Date,Sub_metering_1,type='l',
                        xlab='',ylab = 'Energy sub metering'))
        with(wdata,points(Date,Sub_metering_2,type='l',col='red'))
        with(wdata,points(Date,Sub_metering_3,type='l',col='blue'))
        legend('topright', col = c('black','red','blue'), lty=1,
               cex=0.7,legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
        dev.off()
}