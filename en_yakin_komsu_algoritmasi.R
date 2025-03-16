#-----EN YAKİN KOMSU ALGORİTMASİ---

library(ggplot2)
library(class)

boy<-c(100,125,68,135,74,145,77,123,111,108,88,103)
kilo<-c(98,111,38,98,42,145,49,130,103,79,43,99)
cins<-c("kangal","kangal","pitpul","kangal","pitbul","kangal",
        "pitbul","kangal","kangal","kangal","pitbul","kangal")

tur=as.factor(cins)#factor senin degişkenine verdigin degeri de yazman saglar

analiz<-data.frame(boy,kilo,tur)

ggplot(data=analiz,aes(x=boy,y=kilo))+
  geom_point(mapping = aes( colour=tur))

tahmin=knn(cbind(boy,kilo),c(200,145),tur)#bu verileri yukardaki ferilernde yola cikarak bir tahmin yapiyor
tahmin
