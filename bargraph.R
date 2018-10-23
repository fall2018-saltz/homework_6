
library("ggplot2")
##bar chart with number of murders per state
MPS_bargraph <- ggplot(combined_df, aes(x= stateName, y= TotalStateMurders)) ##takes the merged datdframe and assigns population for the x-axis
MPS_bargraph <- MPS_bargraph + geom_col (color= 'red', fill= 'black') ##adds geo hist on top of the exisiting histogram establishing bin width, color, and fill
MPS_bargraph <- MPS_bargraph + ggtitle("Murders Per State") ##this titles the histogram
MPS_bargraph

##create a bar chart with murders per state, rotate text so we can see x labels and title it "total murders"
MPS_bargraph1 <- ggplot(combined_df, aes(x=reorder(stateName, TotalStateMurders), y = TotalStateMurders, group = 1))
MPS_bargraph1 <- MPS_bargraph1 + geom_col()
MPS_bargraph1 <- MPS_bargraph1 + theme(axis.text.x = element_text(angle = 90, hjust = 1))
MPS_bargraph1 <- MPS_bargraph1 + ggtitle('Total Murders Per State')
MPS_bargraph1

##new bar chart, sort x-axis by murder rate
MPS_bargraph2 <- ggplot(combined_df, aes(x=reorder(stateName, Murder), y = TotalStateMurders, group = 1))
MPS_bargraph2 <- MPS_bargraph2 + geom_col()
MPS_bargraph2 <- MPS_bargraph2 + theme(axis.text.x = element_text(angle = 90, hjust = 1))
MPS_bargraph2 <- MPS_bargraph2 + ggtitle('Total Murders Per State')
MPS_bargraph2

##create bar chart, show 'percentOver18' as color of the bar
MPS_bargraph3 <- ggplot(combined_df, aes(x=reorder(stateName, TotalStateMurders), y = TotalStateMurders, fill = percentOver18))
MPS_bargraph3 <- MPS_bargraph3 + geom_col()
MPS_bargraph3 <- MPS_bargraph3 + theme(axis.text.x = element_text(angle = 90, hjust = 1))
MPS_bargraph3 <- MPS_bargraph3 + ggtitle('Total Murders Per State')
MPS_bargraph3
