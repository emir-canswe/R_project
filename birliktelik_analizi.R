library(arules)
library(dplyr)

# 1️⃣ Rastgele Fiş ve Ürün Verisini Oluştur
set.seed(123)  # Rastgele sayılar için sabit değer
fis = data.frame(
  urun_no = sample(1:2000, 2500, replace = TRUE),  # 2500 fiş oluştur
  urun = sample(c("NULL", "sut", "seker", "kola", "manti", "cips"), 
                2500, replace = TRUE, prob = c(0.1, 0.3, 0.4, 0.7, 0.2, 0.7))
)

# 2️⃣ NULL Değerlerini Temizle
fis = fis[fis$urun != "NULL", ]  # NULL içeren satırları kaldır
fis$urun_no = as.factor(fis$urun_no)  # Kategorik hale getir

# 3️⃣ Aynı Fiş İçindeki Ürünleri Birleştir
fis2 = fis %>%
  group_by(urun_no) %>%
  summarise(urun = paste(sort(unique(urun)), collapse = " | "))

# 4️⃣ Tekrarlayan Fişleri Kaldır
fis2 = fis2[!duplicated(fis2$urun_no), ]

# 5️⃣ Maksimum Ürün Sayısını Hesapla
max_urun = max(nchar(fis2$urun)) / 2 + 1  # "|" işaretleri de sayıldığı için düzeltilmiş
cat("Bir fiste maksimum ürün adedi:", max_urun, "\n")

# 6️⃣ Birliktelik Analizi İçin Veriyi Düzenle
revize_urunler = arules::subset(fis2$urun, fis2$urun != "NULL")
revize_urun_no = arules::subset(fis2$urun_no, fis2$urun_no != "NULL")

# 7️⃣ Fişleri ve Ürünleri Eşleştir
final_birliktelik = split(revize_urun_no, revize_urunler)

# 8️⃣ Veriyi Transactions Formatına Çevir
birliktelik_analizi = as(final_birliktelik, "transactions")

# 9️⃣ Sonuçları Yazdır
inspect(head(birliktelik_analizi))  # İlk birkaç işlemi göster
