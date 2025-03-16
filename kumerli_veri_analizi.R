#---KUMELİ VERİ ANALİZİ----

'''veri_kumesi<-matrix(rnorm(200),ncol = 2)#bu kod iki sutunluk 100 sayi yazmani saglar(rasgele) sayilar


#bunun anlami 100 satirlik 2 tane vari tipi olustırmak

veri_kumesi[1:75,1]=veri_kumesi[1:75,1]+15#bu ise senin 1 sutundaki 1 ve 75 sayilara 15 eklemek için yapilir
#bu kodun ise demek istegi:1. sutundaki 1 ile 75 in satirlra kadar sayilara 15 ekle demek
#yani en sondaki senin hangi sutunu sagiştirmen için verilmiş

veri_kumesi[1:75,2]=veri_kumesi[1:75,2]-5#okunusu=2 sutundaki 1 ve 75 satirlardaki elemalardan 5 cikart
#bunun da demek 2 sutudnaki degerlerden 5 ciakr

summary(veri_kumesi)#verilerin istatistiklerini alir

k_ortalama=kmeans(veri_kumesi,2,nstart = 15)# bu staes senin ne kadar referans nokstasi belirlemeni saglawr
#referans noktasi ne kadar buyuk oluraa kumeler o kadar birbirine yakin olur
k_ortalama$cluster
plot(veri_kumesi,col=(k_ortalama$cluster+1),main = "k-ortalma")

#plot ile veri gorsellestirmew işlemi yapmani saglat


#bu sikik kodun asil mantigi hangi degerlerin hangi aralikta bulundugunu belirtir



#-----------KUME VERİ ANALİRİZİNİN GENEL MANTŞİG--------

#birden cok referans noktasi secerek verileri daha guzel ve daha duzenli bir sekilde kumelendirmehyi saaglar
#amk koydugum olayi bu kadar basitmis iki gundur kafa patlasttik

#bu nstart senin kac tane referans noktasi secmene bakiyor. bu sayeede sayilari daha guzel bir sekilde kumelendirebilirsin



#kume veri analizizndeki birden cok referans noktasi secip bu degerlier bu referans noktalarina gore kumelendirir



'''

veri_kumesi=matrix(rnorm(200),ncol=2)
#yukardaki kod sana 2 kolonluk 100 tane sayi yazmani saglar

veri_kumesi[1:75,1]=veri_kumesi[1:75,1]+15
#bunun anlami ise 1 sutundaki 1 ve 75 . sayilara kadar olanlara 15 ekle

veri_kumesi[1:75,2]=veri_kumesi[1:75,2]-2
#bunun da analami ikinci sutundaki 1 ile 75 degerdeki sayilardan 2 cikar

k_otalama=kmeans(veri_kumesi,2,nstart = 10)
#kmeans snein en yakin kumeyş bulmana yardimci olan seydir
#nstart ise birden cok referans noktasi secip kumenin daha iyi gozukmesini saglar

k_otalama$cluster
#bu cluster fonksiyonu senim sayilari bir kumeye atmani saglar
#yani onun sayesinde sayilar bir kumeye atiliyor
#ve hangi degerin hangi kumeye atandigini belirtir



plot(veri_kumesi,col=(k_otalama$cluster+1))
