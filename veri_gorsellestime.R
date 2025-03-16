#---- VERİ GÖRSELLEŞTİRME TEKRAR ----

library(ggplot2)  # ggplot2 kütüphanesi yükleniyor.

# Mevcut veri kümesini (mpg) kullanarak yeni bir veri çerçevesi oluşturuyoruz.
araba_listesi = mpg
istenilen_veri = data.frame(
  motor_hacmi = araba_listesi$displ,  # Motor hacmi değişkeni
  sehirdeki_yakit = araba_listesi$cty # Şehir içi yakıt tüketimi
)

# ---- Temel Grafik Çizimi ----

# plot() fonksiyonu ile motor hacmine göre şehirde harcanan yakıtı çizelim.
plot(
  araba_listesi$displ, araba_listesi$cty,  # X ekseni: motor hacmi, Y ekseni: şehir içi yakıt tüketimi
  col = "red",  # Noktaların rengi kırmızı
  xlab = "Motor Hacmi",  # X ekseni etiketi
  ylab = "Şehir İçi Yakıt Tüketimi",  # Y ekseni etiketi
  main = "Motor Hacmi vs Şehir İçi Yakıt Tüketimi",  # Grafik başlığı
  type = "b"  # Hem noktalar hem de çizgi olacak şekilde grafik türü
)

# ---- Açıklama ----
# Bu grafikten motor hacmi arttıkça şehirde kullanılan yakıt miktarının azaldığını gözlemleyebiliriz.
# `type` parametresi ile çizim türünü değiştirebiliriz (örneğin "p", "l", "b" gibi).

# ---- ggplot ile Görselleştirme ----

ggplot(data = araba_listesi, aes(x = displ, y = cty)) + 
  geom_point() +  # Nokta grafiği
  labs(title = "Motor Hacmi ve Şehir İçi Yakıt Tüketimi", x = "Motor Hacmi", y = "Şehir İçi Yakıt Tüketimi")

# ---- Aynı Anda İki Grafik Çizme (par fonksiyonu) ----

# `par(mfrow = c(1,2))` ile ekranı 1 satır ve 2 sütun olacak şekilde ikiye bölüyoruz.
par(mfrow = c(1,2))

# İlk grafik: Motor hacmi vs Şehir içi yakıt tüketimi
plot(
  araba_listesi$displ, araba_listesi$cty, 
  ylab = "Şehirde Harcanan Yakıt", 
  xlab = "Motor Hacmi", 
  main = "Ulaşım Harcamaları (Şehir İçi)"
)

# İkinci grafik: Motor hacmi vs Şehir dışı yakıt tüketimi
plot(
  araba_listesi$displ, araba_listesi$hwy, 
  ylab = "Şehir Dışında Harcanan Yakıt", 
  xlab = "Motor Hacmi", 
  main = "Ulaşım Harcamaları (Şehir Dışı)"
)

# ---- Açıklama ----
# `par(mfrow = c(1,2))` komutu ile ekranı ikiye böldüğümüz için iki grafik aynı anda görüntülenir.
# Sol üst köşedeki oklar sayesinde iki grafik arasında geçiş yapabilirsin.
'''#---veri gorsellestirme 2 tekrar----
library(tibble)
library(dplyr)
library(ggplot2)

ucus <- tibble(
  marka = factor(c("katar", "turk", "emirates"), levels = c("katar", "turk", "emirates")),
  ortalama_ucus = c(23, 34, 54)  # Virgül eksikliği giderildi
)

ucus2 <- tibble(
  marka = c(rep("katar", 75), rep("turk", 50), rep("emirates", 65))
)

ggplot(data = ucus2, aes(marka)) +#bu kisimda bir tane degişken oldugu için aes kismina x ve degerleri atamadim
  geom_bar(colour="yellow")  # Çubuk grafiği oluştur


ggplot(data = ucus,aes(x=marka,y=ortalama_ucus,group = 1))+#bu kisimda group senin tum degerileri bir sekil
  geom_line(colour="yellow",size=2)#cizginin rengini burdan ayarlayabilirsin her turlu bok bu sekilde ayarlanabilir





#anasini sikieyeim bu kodalamanin ne sikkik bir sey lena bu
library(ggplot2)

# Örnek veri seti: Öğrenci isimleri ve aldıkları notlar
ogrenciler <- data.frame(
  isim = c("Ali", "Veli", "Ayşe", "Fatma", "Mehmet"),
  notlar = c(85, 90, 78, 88, 92),
  cinsiyet = c("Erkek", "Erkek", "Kadın", "Kadın", "Erkek")  # Cinsiyet bilgisi
)

# Grafik oluşturma
ggplot(data = ogrenciler, aes(x = isim, y = notlar, fill = cinsiyet)) +  # X ekseni isimler, Y ekseni notlar
  geom_col(colour = "black", size = 1.2) +        # Çubuklar, siyah kenar ve kalınlık (size)
  ggtitle("Öğrencilerin Not Dağılımı") +          # Başlık
  xlab("Öğrenciler") +                           # X ekseninin adı
  ylab("Notlar") +


dev.off()  # Grafikleri sıfırlar

library(ggplot2)

# Veri seti
fruitname <- data.frame(
  name = c("banana", "tomato", "portugal"),
  much = c(12, 21, 23)
)

# Grafik oluşturma
ggplot(data = fruitname, aes(x = name, y = much, fill = name)) +
  geom_col(colour = "black") +  # Çubuklar ve kenarları siyah
  ggtitle("Meyve Miktarları") +  # Başlık
  xlab("Meyve Türleri") +        # X ekseni
  ylab("Miktar")                 # Y ekseni








#------VERİ GORSELLESTİRE----

library(tibble)
library(dplyr)
library(ggplot2)

ucus <- tibble(
  marka = factor(c("a", "b", "c"), levels = c("a", "b", "c")),
  ortalama_ocus = c(123, 234, 345)  # Değişken adı burada "ortalama_ocus"
)


ggplot(data=ucus,aes(x=marka,y=ortalama_ocus,fill = marka))+  #simdi data kismina hanig degirin grafigini cizmek istiyorsan orayi ciz
  geom_col(colour="blue")+#aes denilen it ise senin x ve y eksenlerine hangi degeri atmak istiyorsan onlari at
  guides(fill=FALSE)+#fill ocu ise renkleri ayarlar gibi bir sey
  xlab("sirketler")+ylab("ortalama ucus sureleri")+#eksen ve sutun isimlerini bu sekilde degiştireblirsin
  ggtitle("benim adim emircan can")#baslik eklemeye yarayan edevat










#-----VERİ GÖRSELLEŞTİRME-----

library(tibble)      # Veri çerçevesi oluşturmak için kullanılır, özellikle düzenli veri oluşturmak için ideal
library(dplyr)       # Veri işleme kütüphanesi; veri manipülasyon işlemleri için fonksiyonlar sağlar
library(ggplot2)     # Veri görselleştirme kütüphanesi, grafikler ve çizimler oluşturmak için kullanılır

# Veri seti oluşturuluyor
ucus <- tibble(
  marka = factor(c("A", "B", "C"), levels = c("A", "B", "C")),  # Marka isimlerini faktör olarak tanımlar
  sonuc = c(232, 343, 355)                                     # Her markaya karşılık gelen uçuş sürelerini içerir
)
#tibleden yapmana gerek yok direct data.fremeden yapabilirsin3
# Grafik oluşturuluyor
ggplot(data = ucus, aes(x = marka, y = sonuc, fill = marka)) +  # 'ucus' veri setini kullanarak, 'marka' x eksenine, 'sonuc' y eksenine ayrice bu fill istedigin degişkenin farkli bir renkle gostermeni saglar
  geom_bar(color = "blue", stat = "identity") +               # Bar grafiği oluşturur; çubuk kenarları mavi olur, stat="identity" ile y ekseni değerleri direk kullanılır
  guides(fill = FALSE) +                                       # Grafik üzerindeki renkli göstergeyi kaldırır
  xlab("Şirketler") +                                         # X eksenini "Şirketler" olarak adlandırır
  ylab("Ortalama Uçuş Süreleri") +                            # Y eksenini "Ortalama Uçuş Süreleri" olarak adlandırır
  ggtitle("Uçuş Değerleri")                               # Grafiğe başlık ekler


ucus2<-tibble(
  marka=c(rep("A",75),rep("B",50),rep("c",65))#bu sekilde yaoince senin 75 a 59 tane b 65 tane c yazmani saglar 
)#bu sekilde bir veri cercevisi olustrursun


ggplot(ucus,aes(x=marka,y=sonuc,group = 1))+#nu aes senin elemanlarinin konumunu bellirliyor
  geom_line(stat = "identity")+#eger x ve eksenlerinin ikiisni de giriyorsan stat=identity degerini de girmen gerekecek
  geom_point(color="yellow",size=3)
#sadece bu sekilde bile senin bir tablo olsutrumana yeter

##  bak kral geom_line sana mat fonk gibi verirken geom_bar ise sana renkli bir sekilde sunuyor
#line zateen cizgi demk ordan aklinda bulunsun
#geom_point yaptiginda ise sana nokta sseklinde sunuyor(point zaten nokta demek)
#kendi kafana gore de degisler yappabilirsin


ucus3 <- tibble(
  marka = factor(rep(c("a", "b", "c"), each = 100)), #bu sekilde yapmak sana herbirinden 100 tane yazmani saglar
  
  fly = c(rnorm(100, mean = 50), rnorm(100, mean = 51), rnorm(100, mean = 49))#bu sekilde de sana her bir deger senin ortalamasi 50 den 100 tane 51 den 100 tene 49 dan da bir tane yazmani daglar
)

# tablo olusturma 

ggplot(ucus3,aes(fly))+#1 prametre hangi deger atanacak aes kismina ise  x ve y eksenlarine hangi parametre gelecegini belirliyorsun
  geom_histogram(color="black",fill="black")#veri gorsellestirme işini kisacasi geom yapiyor ve 
#bu yaptigin sey fly kismindakilerin hangi degerlerin hangi saatelr arasinda yogunlastigini belirtir


ggplot(ucus3,aes(fly,fill=marka))+   #su sikik fill de istedigin degiskeni farkli sekilde yazmani saglar yani ben burda dedim ki markan degişkeni içrisindeki tum degişkenleri farkli renklerde yazmani saglar
  geom_density(position = "identity")#burda indertity her bir degirn renginin farkli gostermeye yarar

#şu identity denilen kepaze verileri gostermeye yariyro beligin bi degeri bulunmamakta


#amk koydugum hocasi data.frema kullanacak
'''
