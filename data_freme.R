#-----data feme tekrart

#bir adi uzerinde bir girdigin degerleri bir tablos eeklindie sabna sunuyor


df1<-data.frame(
  
  magazano=c(1:3),#birden 3 kadar sayilari sana bu kisma yazmani saglar
  isimler=c("yapay zaka","konyaetliyemek","ankarasimitsarayi"),
  kazanc=c(20,34,63)
  
)

#bu sekilde yaparsan birnci sutuna magazano ikinci sutuna isimleirini ve son sutuna da kazanclari yazar

#str veri tipi ile giridin degerlerin veri tiplerini de yazma imjkanği veriri

str(df1)#hangi degerin ne veri tipinden oldugunu belirtir
summary(df1)#istatislikleri sana gosteriri
dim(df1)#girilen datqafremin boyutunu sana belirtir


df2<-data.frame(
  magazano=c(1:3),
  tecrube=c(5,45,54),
  elemansayisi=c(10,23,34)

)

summary(df2)

merge(df1,df2)#marge donkisyonu ik tane datafremi birlestirir ama degerleri degişken sayilari ayni olmasi lazim

cbind(df1,df2)


#ayrica class içine alirsan da girdegin degein turunu de bulabilirsin

class(df1)

#iste tam da bu sekil yaptiginda girdigin degrin tipini bulabilirsain


library(ggplot2)


ggplot(data = df2,aes(x=magazano,y=tecrube,fill = elemansayisi))+
  geom_point()#bu sekilde sana verilen verilerle bir grafik cizimi yapabilirsin
