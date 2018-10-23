
library("ggplot2")
pop_stat_scatter <- ggplot(combined_df, aes(x=population, y = percentOver18))
pop_stat_scatter <- pop_stat_scatter + geom_point(aes(size=TotalStateMurders, color = TotalStateMurders))
pop_stat_scatter
