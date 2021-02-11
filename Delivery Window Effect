## Step 1 First import Data_9 file in Rstudio via the Import Excel 

## Step 2 Create categorial variables for the Suppliers and the Delivery Windows.

Suppliers<- factor(data_9$Supplier,c("Mono Packaging Materials","Trio PET PLC", "Miami Oranges","NO8DO Mango","Seitan Vitamins"),labels = c("Mono Packaging Materials","Trio PET PLC", "Miami Oranges","NO8DO Mango","Seitan Vitamins"))
Deliverywindow<-factor(data_9$`Delivery window`,c("4 uur", "1 dag", "2 dagen", "1 week"),labels = c("4 uur", "1 dag", "2 dagen", "1 week"))


## Step 3 Plot the linegraph in the console.
ggplot(data_9, aes(x=Deliverywindow, y= `Contract index`, colour=Suppliers, group=Suppliers))+
  geom_line(size=1.5)+
  geom_line(aes(y=Contractindex1), color= "black", size=0.5, linetype = "dashed")+ ##additional dashed line
  xlab("Delivery window in hours")+
  ylab("Contract Index")+
  ggtitle(label = "Delivery Window Effect", subtitle = "Effect Changes in Delivery Window on the Contractindex")+
  theme(plot.title = element_text(color = "red", face = "bold", size = 32), ##themefucntion can be used to create specific thematic changes to the used data.
        plot.subtitle = element_text(color = "black", face = "italic", size = 18), ## subtitle
        axis.title.x = element_text(color = "black", size = 18), ##bigger x axis title
        axis.title.y = element_text(color = "black", size = 18)) ##bigger y axis title
