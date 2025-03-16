library(dplyr)  # dplyr kütüphanesini yükledik.

# ---- Örnek Veri Seti Oluşturma ----

# Rasgele fiş numaraları ve ürün isimlerinden oluşan bir veri çerçevesi (data frame) oluşturuyoruz.
fis1 = data.frame(
  urun_no = sample(1:10, 20, replace = TRUE),  # 1 ile 10 arasında rasgele 20 tane fiş numarası üretir.
  urun_ad = sample(c("sut", "kola", "cips", "NULL"), 20, replace = TRUE)  # "sut", "kola", "cips" ve "NULL" içeren rasgele 20 ürün oluşturur.
)

# ---- NULL Değerlerini Temizleme ----

# "NULL" değerlerini içeren satırları veri setinden çıkartıyoruz.
fis1 = fis1[fis1$urun_ad != "NULL", ]

# ---- Ürünleri Fiş Numarasına Göre Gruplama ----

fis_grup = fis1 %>%
  group_by(urun_no) %>%  # Aynı fiş numarasına sahip ürünleri grupluyoruz.
  summarise(urun_ad = paste(sort(unique(urun_ad)), collapse = ","))  # Aynı fişte bulunan ürünleri virgülle birleştirerek tek bir satırda gösteriyoruz.

# ---- Sonucu Yazdırma ----

print(fis_grup)
