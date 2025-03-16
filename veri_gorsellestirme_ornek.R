library(ggplot2)

# Veri seti: Ürünler, fiyatlar ve satışlar
urunler <- data.frame(
  urun = c("Elma", "Armut", "Muz", "Portakal", "Kiraz"),
  fiyat = c(10, 15, 7, 12, 20),
  satislar = c(120, 150, 200, 180, 250),
  kategori = c("Meyve", "Meyve", "Meyve", "Meyve", "Meyve")
)

# Grafik oluşturma
ggplot(data = urunler, aes(x = fiyat, y = satislar, color = kategori, size = satislar)) +
  geom_point() +                                         # Serpme grafiği ile veriyi gösteriyoruz
  ggtitle("Ürün Fiyatları ve Satışlar Arasındaki İlişki") +   # Başlık ekliyoruz
  xlab("Fiyatlar (TL)") +                                # X ekseni etiketi
  ylab("Satışlar") +                                     # Y ekseni etiketi
  scale_size_continuous(name = "Satışlar") +              # Satışları boyutla gösteriyoruz
  scale_color_manual(values = c("red", "green", "blue")) + # Kategorilere özel renkler
  theme_minimal()                                        # Minimalist tema
