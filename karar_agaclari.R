#-----karar agaclari---

#---------------KARAR AGACLARİ-------------------

#reyaksion ozet=bagimli degişken=fiyat   bagimsiz degişken=uzaklik
#prectik=tahmin etme teorisii
    
library(tree)
library(mlbench)#bu veri içinde diyabet hastalarin verlileri var farkli bir sey degil


data("PimaIndiansDiabetes2",package = "mlbench")#otomatik veri aktarimi saglar

diyabet=PimaIndiansDiabetes2  #bu kisimda diyabeti verilen degere esitliyor

lm(diyabet$diabetes~.,data = diyabet)#bu kullanimda . kullanirsan diyabeti tum verilerle kiyaslilyor(soldaki hangigi degerle kiyaslaman gerektigini sana bielirtiyor)
#diyabet senin bagli degişkenin olur
#lm de verileri analaliz etmeye yarar cok ta bir sikimm yok

karar_tahmin_agaci=tree(diyabet$diabetes~.,data = diyabet)#bu sekilde sana tum verileri evet yda heyir seklinde sunuyor

karar_tahmin_agaci



plot(karar_tahmin_agaci)#plot fonksi grafighi cizdirir
text(karar_tahmin_agaci)#text tabloya yazilari gire
