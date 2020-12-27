#this function produces plot2 using data from subsetdata()
plot2<-function(){
        if(!exists('wdata')){
                subsetdata()}
        png('plot2.png')
        with(wdata,plot(Date,Global_active_power,type='l',
                        xlab='',ylab = 'Global Active Power (kilowatts)'))
        dev.off()
}