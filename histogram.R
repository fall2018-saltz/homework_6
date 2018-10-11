
library("ggplot2")
##Histogram for the population
pop_hist <- ggplot(combined_df, aes(x= population)) ##takes the merged datdframe and assigns population for the x-axis
pop_hist <- pop_hist + geom_histogram(binwidth= 5000000, color= 'red', fill= 'black') ##adds geo hist on top of the exisiting histogram establishing bin width, color, and fill
pop_hist <- pop_hist + ggtitle("State Population Histogram") ##this titles the histogram
pop_hist

##histogram for murder rate
MR_hist <- ggplot(combined_df, aes(x= Murder))
MR_hist <- MR_hist + geom_histogram(binwidth = 1, color='blue', fill= 'pink')
MR_hist <- MR_hist + ggtitle("Murder Rate Histogram")
MR_hist
##change the binwidth parameter so that the data can be more accuratly presented visually

##histogram for assualt
assualt_hist <- ggplot(combined_df, aes(x= Assualt))
assualt_hist <- MR_hist + geom_histogram(binwidth = 1, color='blue', fill= 'pink')
assualt_hist <- MR_hist + ggtitle("Assualt Rate Histogram")
assualt_hist

##histogram for urbanpop
urbanpop_hist <- ggplot(combined_df, aes(x= UrbanPop))
urbanpop_hist <- MR_hist + geom_histogram(binwidth = 1, color='blue', fill= 'pink')
urbanpop_hist <- MR_hist + ggtitle("Urban Population Histogram")
urbanpop_hist

#histogram for rape
urbanpop_hist <- ggplot(combined_df, aes(x= Rape))
urbanpop_hist <- MR_hist + geom_histogram(binwidth = 1, color='blue', fill= 'pink')
urbanpop_hist <- MR_hist + ggtitle("Rape Rate Histogram")
urbanpop_hist
