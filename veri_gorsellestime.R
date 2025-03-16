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
