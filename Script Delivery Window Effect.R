## Step 1 First import Data_9 file in Rstudio via the Import Excel and load library ggplot2 + tideverse
library(ggplot2)

## Step 2 Create categorical variables for the Suppliers and the Delivery Windows.
Companies <- c(unique(data_9$Supplier))
Delwin <- c(unique(data_9$`Delivery window`))
Suppliers<- factor(data_9$Supplier,c(Companies),labels = c(Companies))
Deliverywindow<-factor(data_9$`Delivery window`,c(Delwin),labels = c(Delwin))
Contractindex1<-1


## Step 3 Plot the linegraph in the console.
ggplot(data_9, aes(x=Deliverywindow, y= `Contract index`, colour=Suppliers, group=Suppliers, fill=Suppliers))+
  geom_line(size=1.5)+
  geom_point(size=5, shape=21, colour="black", stroke=1.5)+
  geom_line(aes(y=Contractindex1), color= "black", size=0.8, linetype = "dashed")+ ##additional dashed line
  xlab("Delivery window")+
  ylab("Contract Index")+
  ggtitle(label = "Delivery Window Effect", subtitle = "Effect of Changes in Delivery window on the Contract Index")+
  theme(plot.title = element_text(color = "#2F5597", face = "bold", size = 32), ##themefunction can be used to create specific thematic changes to the used data.
        plot.subtitle = element_text(color = "#767171", face = "italic", size = 18), ## subtitle
        axis.title.x = element_text(color = "#767171", size = 18), ##bigger x axis title
        axis.title.y = element_text(color = "#767171", size = 18), 
        panel.border = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank())

##vragen: Hoe krijgen we gelijke kleuren in beide plots.


## Step 1 First import Data_10 file in Rstudio via the Import Excel 

## Step 2 Create categorical variables for the Suppliers and the Delivery Windows.
Contractindex1 <- 1
Companies <- c(unique(data_10$Supplier))
Suppliers2 <-factor(data_10$Supplier,c(Companies),labels = c(Companies))
DeliveryReliability <- factor(data_10$`Delivery Reliabilty`, c("0.90", "0.92", "0.94", "0.96", "0.98"), labels = c("90%", "92%", "94%", "96%", "98%"))


## Delivery Reliability X Contract Index Plot

ggplot(data_10, aes(x=`Delivery Reliabilty`, y= `Contract Index`, colour=Supplier, group=Supplier, fill=Supplier))+
  geom_line(size=1.5)+
  geom_point(size=5, shape=21, colour="#2F5597", stroke=1.5)+
  geom_line(aes(y=Contractindex1), color= "black", size=0.8, linetype = "dashed")+ ##additional dashed line
  xlab("Delivery Reliability")+
  ylab("Contract Index")+
  
  ggtitle(label = "Delivery Reliability Effect", subtitle = "Effect of Changes in Delivery reliability on the Contract Index")+
  theme(plot.title = element_text(color = "#2F5597", face = "bold", size = 32), ##themefunction can be used to create specific thematic changes to the used data.
        plot.subtitle = element_text(color = "#767171", face = "italic", size = 18), ## subtitle
        axis.title.x = element_text(color = "#767171", size = 18), ##bigger x axis title
        axis.title.y = element_text(color = "#767171", size = 18), 
        panel.border = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank())

