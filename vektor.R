#VEKTORLER

#r programlama dilinde farkli tipte vektorler bulunmakta



#atomak vektorr


a <- 5

typeof(a)#bu sana degişkenin turunu belirtie
is.vector(a) #

#integer 

b<-1L
typeof(b)
is.vector(b)

#karaktyer

c<-"benim adim emircan can"
typeof(c)
is.vector(c)




#LİSTE VEKTORLER

1<- list(12,2,32,4g,23."benim adim iboo")#bu sekilde yapinca hepsini yazabnilirisin

#bir degeri yazman için senin <- degerine eşitlemen gerekenden


#MATRİSLER

#row=satir  row satir oldugunu bilmem senin için birkac avantaj yarataablir
#col=sutun

#col sutun demek amk 

  
m<-matrix(1:12,nrow = 4,ncol=3)#nrow satir sayisinini ncol ise sutuns ayisini bilirtir
#yukardaki matrisin acilimi 4 satir 3 sutun var demek
print(m)
a<-list(12,32,23,"my name thomes shelby")


#MATRİSLER YAOPAY ZEKANİN TEMELİNİ OLSUTURUR

#DATA FREAM
#birden fazla veri tiipi koymayi sagar yani cahar falan

#data frime sanin tablo olsutrumani saglar
d<-data.frame(
  
  city=c("ankara","konya","diyarbakir"),
  nufus=c(2,3,3)#bu sekil olsuturdugunda bir tablos ekişlde sana vcerir veri yani ankaranin nufusu 2 konuyanin nufusu ise 3 olarak yaninda gosterilir
)




#fonksiyon olsuturma


alma<-function(a){
  a=a*a*a
}
b=alma(2)
print(b)
