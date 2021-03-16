## Step 1 First import Data_9 file in Rstudio via the Import Excel and load library ggplot2 + tideverse
library(ggplot2)



#DW PACK Componant

## Step 2 Create categorical variables for the Suppliers and the Delivery Windows.
Companies <- c(unique(Data_sets_step_2_DW_PACK$Supplier))
Delwin <- c(unique(Data_sets_step_2_DW_PACK$'Delivery Window'))
Suppliers<- factor(Data_sets_step_2_DW_PACK$Supplier,c(Companies),labels = c(Companies))
Deliverywindow<-factor(Data_sets_step_2_DW_PACK$`Delivery Window`,c(Delwin),labels = c(Delwin))
Contractindex1<-1


## Step 3 Plot the linegraph in the console.
ggplot(Data_sets_step_2_DW_PACK, aes(x=Deliverywindow, y=`Contract Index`, colour=Suppliers, group=Suppliers, fill=Suppliers))+
  geom_line(size=1.5)+
  geom_point(size=5, shape=21, colour="#2F5597", stroke=1.5)+
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
  
#DW PET Component
## Step 2 Create categorical variables for the Suppliers and the Delivery Windows.
Companies <- c(unique(Data_sets_step_2_DW_PET$Supplier))
Delwin <- c(unique(Data_sets_step_2_DW_PET$'Delivery window'))
Suppliers<- factor(Data_sets_step_2_DW_PET$Supplier,c(Companies),labels = c(Companies))
Deliverywindow<-factor(Data_sets_step_2_DW_PET$`Delivery window`,c(Delwin),labels = c(Delwin))
Contractindex1<-1


## Step 3 Plot the linegraph in the console.
ggplot(Data_sets_step_2_DW_PET, aes(x=Deliverywindow, y=`Contract index`, colour=Suppliers, group=Suppliers, fill=Suppliers))+
  geom_line(size=1.5)+
  geom_point(size=5, shape=21, colour="#2F5597", stroke=1.5)+
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

#DW ORANGES Component
## Step 2 Create categorical variables for the Suppliers and the Delivery Windows.
Companies <- c(unique(Data_sets_step_2_DW_ORANGES$Supplier))
Delwin <- c(unique(Data_sets_step_2_DW_ORANGES$'Delivery Window'))
Suppliers<- factor(Data_sets_step_2_DW_ORANGES$Supplier,c(Companies),labels = c(Companies))
Deliverywindow<-factor(Data_sets_step_2_DW_ORANGES$`Delivery Window`,c(Delwin),labels = c(Delwin))
Contractindex1<-1


## Step 3 Plot the linegraph in the console.
ggplot(Data_sets_step_2_DW_ORANGES, aes(x=Deliverywindow, y=`Contract index`, colour=Suppliers, group=Suppliers, fill=Suppliers))+
  geom_line(size=1.5)+
  geom_point(size=5, shape=21, colour="#2F5597", stroke=1.5)+
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


#DW MANGO Component
## Step 2 Create categorical variables for the Suppliers and the Delivery Windows.
Companies <- c(unique(Data_sets_step_2_DW_MANGO$Supplier))
Delwin <- c(unique(Data_sets_step_2_DW_MANGO$'Delivery window'))
Suppliers<- factor(Data_sets_step_2_DW_MANGO$Supplier,c(Companies),labels = c(Companies))
Deliverywindow<-factor(Data_sets_step_2_DW_MANGO$`Delivery window`,c(Delwin),labels = c(Delwin))
Contractindex1<-1
Data_sets_step_2_DW_MANGO$`Contract index` <- round(Data_sets_step_2_DW_MANGO$`Contract index`, digits = 2)


## Step 3 Plot the linegraph in the console.
ggplot(Data_sets_step_2_DW_MANGO, aes(x=Deliverywindow, y=`Contract index`, colour=Suppliers, group=Suppliers, fill=Suppliers))+
  geom_line(size=1.5)+
  geom_point(size=5, shape=21, colour="#2F5597", stroke=1.5)+
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


#DW Vitamins Component
## Step 2 Create categorical variables for the Suppliers and the Delivery Windows.
Companies <- c(unique(Data_sets_step_2_DW_VITAMINS$Supplier))
Delwin <- c(unique(Data_sets_step_2_DW_VITAMINS$'Delivery window'))
Suppliers<- factor(Data_sets_step_2_DW_VITAMINS$Supplier,c(Companies),labels = c(Companies))
Deliverywindow<-factor(Data_sets_step_2_DW_VITAMINS$`Delivery window`,c(Delwin),labels = c(Delwin))
Contractindex1<-1



## Step 3 Plot the linegraph in the console.
ggplot(Data_sets_step_2_DW_VITAMINS, aes(x=Deliverywindow, y=`Contract index`, colour=Suppliers, group=Suppliers, fill=Suppliers))+
  geom_line(size=1.5)+
  geom_point(size=5, shape=21, colour="#2F5597", stroke=1.5)+
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





DeliveryReliability <- factor(Data_sets_step_2_DW_PACK$`Delivery Reliability`, c("0.90", "0.92", "0.94", "0.96", "0.98"), labels = c("90%", "92%", "94%", "96%", "98%"))
Companies <- c(unique(Data_sets_step_2_DW_VITAMINS$Supplier))
Delwin <- c(unique(Data_sets_step_2_DW_VITAMINS$'Delivery window'))
Suppliers<- factor(Data_sets_step_2_DW_VITAMINS$Supplier,c(Companies),labels = c(Companies))
Deliverywindow<-factor(Data_sets_step_2_DW_VITAMINS$`Delivery window`,c(Delwin),labels = c(Delwin))
Contractindex1<-1

#DR Pack Component
## Delivery Reliability X Contract Index Plot
Companies <- c(unique(Data_sets_step_2_DR_PACK$Supplier))
Delrel <- c(unique(Data_sets_step_2_DR_PACK$`Delivery Reliability`))
Suppliers2 <-factor(Data_sets_step_2_DR_PACK$Supplier,c(Companies),labels = c(Companies))
DeliveryReliability<-factor(Data_sets_step_2_DR_PACK$`Delivery Reliability`,c(Delrel),labels = c(Delrel))
Contractindex1 <- 1

ggplot(Data_sets_step_2_DR_PACK, aes(x=`DeliveryReliability`, y= `Contract index`, colour=Supplier, group=Supplier, fill=Supplier))+
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

#DR PET Component
## Delivery Reliability X Contract Index Plot
Companies <- c(unique(Data_sets_step_2_DR_PET$Supplier))
Delrel <- c(unique(Data_sets_step_2_DR_PET$`Delivery reliability`))
Suppliers2 <-factor(Data_sets_step_2_DR_PET$Supplier,c(Companies),labels = c(Companies))
DeliveryReliability<-factor(Data_sets_step_2_DR_PET$`Delivery reliability`,c(Delrel),labels = c(Delrel))
Contractindex1 <- 1

ggplot(Data_sets_step_2_DR_PET, aes(x=`DeliveryReliability`, y= `Contract index`, colour=Supplier, group=Supplier, fill=Supplier))+
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


#DR Oranges
## Delivery Reliability X Contract Index Plot
Companies <- c(unique(Data_sets_step_2_DR_ORANGES$Supplier))
Delrel <- c(unique(Data_sets_step_2_DR_ORANGES$`Delivery Reliability`))
Suppliers2 <-factor(Data_sets_step_2_DR_ORANGES$Supplier,c(Companies),labels = c(Companies))
DeliveryReliability<-factor(Data_sets_step_2_DR_ORANGES$`Delivery Reliability`,c(Delrel),labels = c(Delrel))
Contractindex1 <- 1

ggplot(Data_sets_step_2_DR_ORANGES, aes(x=`DeliveryReliability`, y= `Contract index`, colour=Supplier, group=Supplier, fill=Supplier))+
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


#DR MAngo
## Delivery Reliability X Contract Index Plot
Companies <- c(unique(Data_sets_step_2_DR_MANGO$Supplier))
Delrel <- c(unique(Data_sets_step_2_DR_MANGO$`Delivery reliability`))
Suppliers2 <-factor(Data_sets_step_2_DR_MANGO$Supplier,c(Companies),labels = c(Companies))
DeliveryReliability<-factor(Data_sets_step_2_DR_MANGO$`Delivery reliability`,c(Delrel),labels = c(Delrel))
Contractindex1 <- 1

ggplot(Data_sets_step_2_DR_MANGO, aes(x=`DeliveryReliability`, y= `Contract index`, colour=Supplier, group=Supplier, fill=Supplier))+
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


#DR Vitamins
## Delivery Reliability X Contract Index Plot
Companies <- c(unique(Data_sets_step_2_DR_VITAMIN$Supplier))
Delrel <- c(unique(Data_sets_step_2_DR_VITAMIN$`Delivery reliability`))
Suppliers2 <-factor(Data_sets_step_2_DR_VITAMIN$Supplier,c(Companies),labels = c(Companies))
DeliveryReliability<-factor(Data_sets_step_2_DR_VITAMIN$`Delivery reliability`,c(Delrel),labels = c(Delrel))
Contractindex1 <- 1

ggplot(Data_sets_step_2_DR_VITAMIN, aes(x=`DeliveryReliability`, y= `Contract index`, colour=Supplier, group=Supplier, fill=Supplier))+
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
