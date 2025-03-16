#-----BASİT DOGRUSAL MREYAKSİYON

library(caret)
library(tidyverse)
library(AppliedPredictiveModeling)
library(pls)
library(elasticnet)
library(broom)
library(glmnet)
library(MASS)
library(ISLR)
library(PerformanceAnalytics)
library(funModeling)
library(Matrix)
library(ggplot2)

#df1<-Advertising

#plot(Sales~TV,data=df1,phs=20,cex=1.3,main="radionun satişlara etkisi")#cex=noktanin boyutu phs=tipi
#plot sadece bir degeri tek hafizada tutar
#bu grafik senin reklamlardan sonra satişlarin nasil degiştigini belirrtir

#pairs(df1)#pairs ilde de hepsini bir alanda bulabilirrsin
#kimileri bu koonuda daha fazla bilgiye sahip olamalarina karsin neden bu sekil davraniyorlar bir turlu


#featurePlot(x=df1[,c("TV","Radio","Newspaper")],y=df1$Sales)#x=df1 ise her bir degeri satişlar uzerindeki etkisini hesapla y=df1$sales ise satişlarins ayisini tabloda gosster gibi
#peki [] parantez bırda me ise yariyor
#benim anladigim:hangi tablonun  hangi degere ait oldugunu belirtmek


#cep_uretimi=c(2006,2008,2009,2013,2019,2022)
#cep_fiyat=c(2850,2995,2999,4500,6555,7222)

#analliz<-data.frame(cep_uretimi,cep_fiyat)

#ggplot(data=analliz,aes(x=cep_uretimi,y=cep_fiyat))+
 # geom_point()+
 # coord_cartesian(xlim = c(2006,2022))#bo fonksiyon senin x eksenindeki hengi iki deger arasini gostermeni saglar


library(ggplot2)

merkeze_yakinlik=c(25,45,55,85,100,650,2500,3000,4270)#bu kodda 25 metreye 7500 tl fiyat vermissin 45 m 6000 tl fiyat
fiyat=c(7500,6000,5000,4250,3850,2745,1800,1700,1600)
#bu degerlerden yola cikarak istedigin daireinin fiyatinin tahminğidegerini ogrenebilirsin
#bu kodda sana dairenin merkeze yakinligin fiyat ile ilişkisini analatiyor
#bagimli degisken fiyat bagimsiz degisken ise merkeze yakinlik oluyor 
#yani merkeze yakinligindan yola cikarak bir dairenin fiyatini tahmin edecez




yeni_veri=data.frame(
  merkeze_yakinlik=c(35,2988,4000,899)) 

ev_endeksi=data.frame(
  merkeze_yakinlik,fiyat)

hesaplama_analizi=lm(formula = fiyat~merkeze_yakinlik,data = ev_endeksi)#bu kisimda lm fonksiyonu ile fiyat=bagli degişkeni ile merkeze yakinlik ta degişimini inceliyoruz
summary(hesaplama_analizi)
#yani bu kodda demek istenilen merkze yakinlik artikca fiyatlarin artmasindan bahsedilitor

ggplot(data=ev_endeksi,aes(x=merkeze_yakinlik,y=fiyat))+
  geom_point()+
  geom_smooth(method = "lm",formula = y~x)

#consol kisminda Multiple R-squared:  0.6258,	Adjusted R-squared:  0.5723 kismi sana %62 lik bir dogru oran verecektir

tahmin<-predict(hesaplama_analizializi,yeni_veri)
#predict sana daha iyi birr veri sunar
#yeni senin eve uzakligindan yola cikarak sana tahmini bir ev kirasi soyler
#----CİKTİ----
#34m yakinliktakim ev için 4997 tl 2988 metre için 2011 tl 4000 metere için 988 tl 899 metre için de 4123 tl fiyat bicti
tahmin

#
yeni_veri$tahmin=tahmin



cep_uretim_yili = c(2000, 2014, 2015, 2016, 2018)
cep_fiyat = c(100, 120, 150, 160, 300)

analiz = data.frame(cep_fiyat, cep_uretim_yili)

# Grafik çizimi
ggplot(data = analiz, aes(x = cep_uretim_yili, y = cep_fiyat)) +
  geom_point()

# Lineer model oluşturuluyor
guess = lm(formula = cep_fiyat ~ cep_uretim_yili, data = analiz)
#bu kodda cep fiyatindan yola cikarak senin fiyatlarindaki degişimi inceler
# Model özeti
summary(guess)

# Tahmin için yeni veri oluşturuluyor
new_price = data.frame(cep_uretim_yili = c(2010, 2030, 2003))
#yukardaki girdigin tl moddelerinin fiyatlarini tahmini olarak yazmnai saglar
# Tahmin yapılması
free = predict(guess, new_price)

# Sonuçların yazdırılması
print(free)
