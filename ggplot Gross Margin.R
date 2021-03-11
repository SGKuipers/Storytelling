library(viridis) 
library(hrbrthemes) 
library(ggplot2) 
library(dplyr) 



Revenue2 <- aangepast_overzicht 
Revenue2$z <- round((Revenue2$z*100),0)

ggplot(Revenue2, aes(fill=group, label=(paste0(Revenue2$z, "%")), y=y, x=x)) +  
  
  geom_bar(position="stack", stat="identity") + 
  
  scale_fill_viridis(discrete = T) + 
  
  ggtitle("Overview of Gross Margin for Customers") + 
  
  geom_text(size = 5, position = position_stack(vjust = 0.5))+ 
  
  theme_ipsum() + 
  
  xlab("Customers") +
  ylab("Revenue in euro's")




