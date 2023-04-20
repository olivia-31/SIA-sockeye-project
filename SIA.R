library(ggplot2)

Data <- read.csv("Data.csv")
Data<-Data[1:43,]
ggplot(Data, aes(x=d13C, y=d15N, color=Ecotype)) + 
  geom_point() +
  stat_ellipse() +
  theme_classic() 

library(mvnormtest)
manov <- manova(cbind(d15N, d13C) ~ Ecotype, data= Data) 
summary(manov)

