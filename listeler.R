#LİSTELER

#pyton dilinde ile ayni farkli bir durum namevcut
#Bir elemanda birden fazla veri tipi tutmani saglar
#bunu matrisler de dahil
#struclardan fakili olarak sadece girdigin verileri tablo seklinde olsuturmani saglar

a<-list("hayat","sevince","guzel",23)
#listeler farkli degerde veriler alabilir
#farkli sekideki veri tiplerlini tutabilir (sraclar gibi)
#list pytondaki digerleri ile ayni

l2<-list("yapay zeka",2:9,matrix(1:4,2,2))

c(a,l2)
# c harfi harfi ile iki farkli listeyeiş tipki vektorleri birlestirebilirsin

names(a)<-c("vizyon1","vizyon2:","vizyon3:","cevvel")#names senin liste içindeki olsutrudunu degerlere isim verir (aciklama gibi bir sey)

a[3]#listenin ucuncu elemanina gelmeni saglar
print(a[3])
#sonradan ekleme için a[5]<-"my name is thomws shelby"

a[5]<-"ne garip bir cocuk bu amk "

#unlist listenin tipini tek bir degeri esitliyor

cimbom=unlist(a)#bu sekişl yapince tum degerleri char veri tipine donusturur
print(cimbom)

#ama ager sadece 1 tanesini degiştrimek istiyorsan tolower fonksiyonunu kullanacaksin 

#tolower(a$vizyon) seklide olacakti

ali<-list(firt=1:10,karesi=(1:10)^2,kup=(1:10)^3)

#mean fonk listedeki tum degerlerin ortalamasini alir


lapply(ali, mean)
