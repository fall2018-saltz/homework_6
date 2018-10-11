
library("ggplot2")
##create a boxplot for the population
pop_boxplot <- ggplot(combined_df, aes(x = factor(0), y = population)) + geom_boxplot() + ggtitle("Population Box Plot")
pop_boxplot

##create a boxplot for the murder rate
MR_boxplot <- ggplot(combined_df, aes(x = factor(0), y = Murder)) + geom_boxplot() + ggtitle("Murder Rate Boxplot")
MR_boxplot
##explain which visualization was most helpful
##I believe the boxplot is the most helpful because it has a better representation of the data and it is easier to identify the quartiles/outliers
