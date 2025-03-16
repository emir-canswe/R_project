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


'''# Vektörleri tanımlıyoruz
V <- 1:5  #bunnun anlami senin 1 ile 5 sayilari arasi degerlri yazmani saglar
V2 <- 2:6


#iki vektoru birlestirmek için c ve cbin fonksiyonlari kullanilir
# Vektörleri topluyoruz
v3=V + V2

print(v3)
# bu kisimda her bir degerin karsisina gelen degerle toplamini verir yani 1 ve 2 2 ve 3 falan işte

#  ----- bu sikik c harfi senin iki vektoru teker teker birlesik yazmani saglar yapmani saglar

# İki vektörü birleştiriyoruz
V3 <- c(V, V2)  #bu ise ikii vektor yan yana birlestirip v3 vektorune esitlenmini saglar
print(V3)

#  bu sikik c harfi onceicindeki 1 degeri sonra 2ç degeri cikti olarakj ekrana veriri

# Tüm vektörleri birleştiriyoruz

c(V, V2, V3)

#yukarda iki vektorun
##ggplot senin veri gorsellestimede kulancagimn bir uygulamam
#benş bos yere yorme

cbind(V,V2)

#c bind iki vektro birmatrix sseklinde vermeni saglar yan i tablo seklinde

#cbind degeri vektorun degerlerini tekrer tekre karsisina yazar

#c nin içinde de vektore isim verebilirsin

isimli<-c(a=3,b=23,c=23)
#goruldugu gibi yukarda c parametresinin içinde vektor içinde isima atamasi yapilir
#bu kisimda = işsareti kullanmalisin


#VEKTOR TİPİ DEGİŞİTİRME

#as.(degiştrimek istedegin tur) seklinde yaparsan degiş olur

a<-c("emir","can")

as.logical(a)#bu sekilde yaparsan char veri tiiipini logal bir degişkene cevirir

#inteceer bir veri tipini de karakter tipine donusturebilirsin


b<-43

as.character(b)#bu kisimda ise intecer veri tipini char veri tipine donusturcu

a=2:8
b=1:7
k=cbind(a,b)
print(k)

#yanş kisacasi cbin ikim vektoru birlestiemn sana matrixi verir

#VEKTORDE ELEMAN CEGİRMA


vektor<-rnorm(50)#BU SEKİLDE YAPARSAN RASGEEL 50 TABE ELEMAN CEKMİŞ OLACAKSİN

vektor[3]#BU SEKİLED 3 VEKTORUN DEGERİNİ CEKRSİN


vektor[c(5,8,11)]#koseli parantez ile cekme işlemni gercekleşir

vektor[1:10]#bu sekilde ise 1 ve 10 vektorler arasindaki degeri sana gosteriri

 #iki vektırun birlesimi sana matexi verir
#r dilininde console kisminda aramak istedigin seyi girdiginde sana gosteriyor

#genel anlamda bir degere ulasmak istiyorsan koseli parantez kullancaksin

#r dilinde herhangi bir kosul yapmadan direct olarak isteg-din ssekilde vektoru kullanbilirsin


vektor[vektor>7]




#bir degeri silemk istiyorsan o degei null a eşitle
V<-NULL


#verktorler ayni tur veri tipinden olusur

ali<-c("elma","mus","as","112")#bircok degeri içi içie yaziyorsan c harfini yazman lazim

print(ali)

seri<-c(2:5,23,25)#bu kisimda ise 2 den 5 ve 23 tem 25 kadar olan sayilari sana vektor seklinde belirtir
print(seri)
#c fonkdiyonunu her zaman kullan her zaman kullanilir unutma ha'''

#fonksiyon olsuturma


alma<-function(a){
  a=a*a*a
}
b=alma(2)
print(b)
