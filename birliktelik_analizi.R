#-----BİRLİKTELİK ANALİZİ---

#bir yada daha fazla urunun ayni anda alinmasi uzerine hesaplanan analiz sitemidir


'''
urun_no=sample(c(1:2000),2500,replace = TRUE)
#1 2000 ne kadar urun no olusturuldu ve 2500 tane refereans noktasi belirlendi
#tru olan yer de tekrarlamayis aglar(tam oalrak ne demek istedifini analamadima ma herjalde iyidir)
#birlikteli analizim denilen sey ayni seri numarasina sahip degerleri sana cikti olarak verebilme imkani saglar


urun=sample(c("NULL","sut","seker","kola","manti","cips"),2500,replace = TRUE,
            prob = c(0.1,0.3,0.48,0.70,0.23,0.60))
#bu kodda ise sirali bir sekilde hangi urunun % kac ihtimalla gorulme sikligi yazili
#raplece fonksiyonu bir degerin art arda tekrarlanam ihtimalini artir



fis=data.frame(urun_no=sample(c(1:2000),2500,replace = TRUE),urun=sample(c("null","sut","seker","kola","manti","cips"),2500,replace = TRUE,
                                                                         prob = c(0.1,0.3,0.48,0.70,0.23,0.60)))

fis$urun_no=as.factor(fis$urun_no)
#faktor=bir veri secitiginde karsisindaki degeri de almis olursun

fis2=fis%>%group_by(urun_no)%>%mutate(urun=paste(urun,collapse = " | "))
#bana fisin içindeki urunnoyu guruplandirip cek anlaminda kullanilir


fis2=fis2[!duplicated(fis2$urun_no),]

#bu kodu yarin dabah detayli bir seklilde calis

'''

#---- BİRLKTELİK ANALİZİ TEKRAR----


#bu kodda senin 2 ile 2000 arasinda 2500 tane sayi olusturmani saglar 
#replace ise ayni urun numarasina sahip degerlerin olabilecegini sana belirtir


#prob fonksiyonu hangi degerden kac tane cikacagini sana gosterir
#yani yazilann degerlerde hangi degerden % lik olarak cikma olasiligini sana belirtir


library(arules)
library(dplyr)


fis=data.frame(
  urunno=sample(c(1:2000),2500,replace = TRUE),
  urun_ad=sample(c("sut","seker","lokum","NULL","cips","kola"),2500,replace=TRUE,
                 prob = c(0.20,0.80,0.52,0.1,0.5,0.44)
  )
  
)


fis$urunno=as.factor(fis$urunno)
#faktor girilen parametrenin karsisindaki degeri de senin almani saglar

fis2=fis%>%group_by(urunno)%>%mutate(urun_ad=paste(urun_ad,collapse = " | "))
#bu kodda bama fisin içindeli orunno yu guruplandirip fis2 esitle
#ve urun adlari arasinda | isaretini koy

fis2=fis2[!duplicated(fis2$urunno),]
'''
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

'''

