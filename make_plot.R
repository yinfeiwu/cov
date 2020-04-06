library(readxl)
COVID19 <- read_excel("/users/wuyinfei/Desktop/MASS-PRF_SARS_S.xlsx", sheet = "S")

#For S
library(ggplot2)
COVID19$col <- ifelse(COVID19$Lower_CI_Gamma<4, 0, 1)
p<-ggplot(data=COVID19, aes(x=Position, y= Gamma,colour=as.factor(col))) +
  geom_line()+ 
  scale_color_manual(name="gamma", labels=c("lower CI<=4", "lower CI>4"), values=c( "blue", "red"))
p+  geom_ribbon(aes(ymin = Lower_CI_Gamma, ymax= Upper_CI_Gamma), alpha=0.2, col=NA)+
  ggtitle("Graph for SARS S Gene") 
  




#previous
library(ggplot2)
COVID19$col <- ifelse(COVID19$Lower_CI_Gamma<4, 0, 1)

p<-ggplot(data=COVID19, aes(x=Position, y= Gamma,colour=as.factor(col))) +
  geom_line()+ 
  scale_color_manual(values=c( "blue", "red"))
p+  geom_ribbon(aes(ymin = Lower_CI_Gamma, ymax= Upper_CI_Gamma), alpha=0.2, col=NA)+
  ggtitle("Graph for COVID-19") 