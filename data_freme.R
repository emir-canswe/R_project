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


'''#data freme 2

personel<-data.frame(
  isim=c("emir","mehmet","zeynep"),
  yas=c(22,22,33),
  bolum=c("veri analisti","imalat","insan kaynaklari"),
  stringsAsFactors = TRUE
)
#frame zaten cerceve demek unutma
#data fram verilen degerleri bir tablos seklinde bana sunar
#sraklara cok benze ama verdigind egerleri bir tabloı seklinmde sunar

#ilk girdigin parametre tablonmun ust taeafindaki basligi gibi bir sey,
#ama dikkat etmen gerekn bir diger konu ise her birinde eleman saytialri ayni olmaşi

is.data.frame(personel)#bu deger girdigin degişkenin veri tipini bulsmana yardimci olur
#eger içindeki girdigin deger datafreme ise true degilse false degeri consol kisminda yazilir

summary(personel)#summary sana verilerin istatisligini cikartir
str(personel)#srt ise sana verileri consolda yazdirir


#bir mevzu daha var basta(isim diye yazdigin kisim) o satiri ifade eder sutunu ise yandisi 0 1 2 3... diye gider

#bu satira da ulasabilme imkanin var
 personel[2,1]  #ANLAMİ=1 satir 2 sutundaki degeri bana yazdir anlamninda kullanilir
 
 
#  $ (dolar) isateti ile personal kismindaki elemanlara ulasabilirsin ipki strucrlardaki .(nokta) gibi
 
 personel$isim #bu sekide yazarsam ban isimleri yazmayi saglar
 
 personel$isim[1]#bu seikide iseisimleirin iklince degerini ulasabilirim
 
 #personel$isim<-NULL #yaparsan isim sutununu komple sileceksin
 personel$isim[1]<-NA
 
 
 
 library(caret)
 
 data("diamonds")
  
 veri<-diamonds 
 
 rm(diamonds)
 
 head(veri)#veriye ait ilk 6 degeri bana yazmansini saglar
 head(veri,3)#bu seklilde ise sana ilk 3 degeri yazdirir
 
 summary(veri)#samury sana girdigin verilerin istatisliklerini verir
 
 library(summarytools)#bu kutuphane ise sana verileri tablo seklinde sunmayi saglar(yukardakini sana tablo sseklinde sunar)
 view(dfSummary(veri))
 
 
 
 emir=data.frame(
   name=c("emir","can"),
   age=c(1,32),
   nigename=c("messi","ronalda")
 )




'''
