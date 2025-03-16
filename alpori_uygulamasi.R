#----- ALPORİ ALGORİTMASI -----

# Bir değerin tekrarlanma sıklığına göre bir frekans oluşturmak.
# Eğer bu oluşan değer belli bir değerin altında tekrarlanıyorsa, bu değeri artık çıktı olarak verme.
# Yani özetle: toplam kullanılan veri / toplam veri = senin kritik noktan.

#------ BİRLİKTELİK ANALİZİ TEKRAR -----

library(arules)  # Birliktelik analizi için kullanılan arules paketi yükleniyor.
library(dplyr)   # Veri manipülasyonu için dplyr paketi yükleniyor.

# `prob` = Hangi değerin yüzde kaç ihtimalle bulunacağını belirler.
# `sample` = Belirlenen aralıkta istenilen kadar sayı üretir.
# `replace` = Aynı değerden birden fazla olup olmayacağını belirler. 
# Örneğin, aynı barkot numarasına sahip birden fazla ürün olabilir.

fis = data.frame(
  urun_no = sample(c(1:2000), 2500, replace = TRUE),  # 1 ile 2000 arasında rastgele 2500 ürün numarası üret.
  urun = sample(c("NULL", "sut", "seker", "kola", "mantı", "cips"), 2500, replace = TRUE,
                prob = c(0.1, 0.3, 0.4, 0.7, 0.2, 0.7))  # Ürünlerin çıkma olasılıklarını belirle.
)

# `fis=fis[fis$urun!="NULL",]`  # İçinde NULL olanları silmek için (İstersen açabilirsin).
fis$urun_no = as.factor(fis$urun_no)  # Ürün numaralarını faktör formatına çevirerek gruplama işlemlerini kolaylaştır.

# Ürünleri gruplandırarak, aynı fişte yer alan ürünleri tek satırda gösterelim.
fis2 = fis %>%
  group_by(urun_no) %>%  # Ürün numarasına göre gruplama yap.
  mutate(urun = paste(urun, collapse = " | "))  # Aynı fişteki ürünleri " | " ile ayırarak tek bir satır haline getir.

# `mutate` fonksiyonu, gruplandırılan ürünleri düzenleyerek okunması daha kolay hale getirir.

#------ KODUN GENEL ANLAMI -----

fis2 = fis2[!duplicated(fis2$urun_no),]  
# Aynı ürün numarasına sahip olan fişlerden sadece birini bırakıyoruz.
# Yani tekrarlananları temizleyerek, her ürün numarasını tek bir satırda gösteriyoruz.

nchar("emir")  # İçindeki string'in kaç karakter içerdiğini gösterir. Çıktı: 4

max(nchar(fis2$urun))  
# Maksimum kaç ürünün bir fişte satıldığını hesaplar. 
# Çıktı örneğin: 42 (ama "| " işaretlerini de karakter olarak saydığı için 42 / 2 + 1 ile düzeltiyoruz).
# Bu şekilde, bir fişte satılan maksimum ürün adedini hesaplamış oluruz.

# NULL değerleri temizleyerek yeni bir veri oluşturuyoruz.
revize_urunler = arules::subset(fis2$urun, fis2$urun != "NULL")  
revize_urun_no = arules::subset(fis2$urun_no, fis2$urun_no != "NULL")

# Aynı fiş numarasına sahip ürünleri bir arada göstermek için `split` fonksiyonunu kullanıyoruz.
final_birliktelik = split(revize_urun_no, revize_urunler)

# `split` fonksiyonu iki değeri birbirine bağlar ve gruplandırır.
# Burada amaç, aynı fiş numarasına sahip ürünleri tek bir yerde göstermek.

# Birliktelik analizi için veriyi "transactions" formatına çeviriyoruz.
birliktelik_analizi = as(final_birliktelik, "transactions")

# Apriori algoritması kullanarak kurallar oluşturuyoruz.
rulles = apriori(birliktelik_analizi, parameter = list(support = 0.00005, confidence = 0.01))

# `support` = Bir ürün kombinasyonunun minimum destek değerini belirler.
# `confidence` = Birliktelik kurallarında minimum güven değerini belirler.
