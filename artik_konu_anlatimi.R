#-------Artik konu anlatimi----
#gercek ile tahmin edilen deger arasindeki fark

df1 <- Advertising
lm_model <- lm(Sales ~ TV + Radio, data = df1)#bu kisimda lm model senşn satişlaradaki
#formulun aciklamsi: "Sales'i (satışlar) TV ve Radio reklam harcamalarına bağlı olarak modelle."

# Modelin özetini kontrol et
summary(lm_model)
# Yeni gözlem verisini oluştur
gozlem <- data.frame(
  TV = 300,   # TV reklama 300 birim harcama
  Radio = 75  # Radio reklama 75 birim harcama
)

# Tahmin yap
predict(lm_model, gozlem, interval = "confidence", level = 0.99)

head(df1$Sales,10)#gercek deger
head(predict(lm_model),10)#tahmini satiş degeri

# Gerçek ve tahmin edilen satışları karşılaştırmak için bir veri çerçevesi oluştur
kiyas <- data.frame(
  gercek = head(df1$Sales, 10),  # Gerçek satış verileri (ilk 10 gözlem)
  tahmin = head(predict(lm_model), 10)  # Tahmin edilen satışlar (ilk 10 gözlem)
)

# Artık (hata) hesapla
kiyas$artik <- kiyas$gercek - kiyas$tahmin  # Gerçek satışlardan tahmin edilen satışları çıkararak hata hesapla

# Sonuçları görüntüle
kiyas





#genel anlamda artik
#  predict()---senin tahmin yapmani saglar

#lm senin iki tane deger ile satişi tahmin etmeni saglar

#gozlem ise baska bir sey

#interval=gucen araligi olusturamnis aglar
#confidence=tahimin arailigi heaplar
#level=0.99 guvenaraligini belirler %99 guven aralaigi mevcut yani




#YANİ KİSACASİ BUB KOONUYU TEKRAR Bİ FARKİ HOCADAN DİNLE
