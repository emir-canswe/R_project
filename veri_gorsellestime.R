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
  ylab("Notlar") +'''
