library(readxl)

x1 <- read_excel("/users/wuyinfei/desktop/orf8.xlsx", skip = 1)


#668
#

for (i in 1:40){
  x2<-x1[983+ 1076*(i-1), ]
}
#
for (i in 1:20){
  x2[i,]<-x1[983+ 1076*(i-1), ]
  }


x3<-x2[,c(2:82)]
write.table(x3,"/users/wuyinfei/desktop/ASR_saved3.31/ancestry_cov_orf8.txt", sep='', quote = F, row.names=F)




