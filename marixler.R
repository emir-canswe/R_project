#MATRİSLER

#iki vektroun bireşimi ban matsisi verir bu da cbind yapar
#c dilindeki ile ayni amk pek bir hikayesi bulunmuyır


v1<-c(1:10)
print(v1)
v2<-c(2:11)
v3<-c(3:12)
v4<-c(4:13)
#matrissşeri degigin iki vektorun birlesmesi olısan sikik bir sey fazlasi degeti
     

a<-cbind(v1,v2)#bundan sonra a degişkeni bir matrise esit oluyor
print(a)

data.frame(
  va=v1,v2
)

# cbinn senin iki tane vektoru matrixe cevirmeni sagalr 
#cbind senin iki vektoru matrise vevirmeni saglar

#degişken sayisi sutuns ayisini belirtirken her bir vektordeki eleman sayisi ise satir sayisini belirtir



#bu cblid pici senin vektoru matrise cevirmeni saglar




#ncow ve nrow

#col=sutun(kolon) row=satir denilir

matrix(1:12,ncol=3,nrow=4,byrow = TRUE)



# BYROw senin matrşsş normal bir sekilde(bilindik bir sekilde) yazmani saglar


#NCOL:sutun sayisini      NROW:satir sayisini belirtie

#eger iki diziyi brilestrimek istiyorsan boyutlari falan her bok esit olali

m1<-rbind(v1,v2,v3,v4)
m2<-matrix(1:40,nrow = 4,ncol=10)

cbind(m1,m2)#su sekilde iki martixi birlestridim amk kim benim kadar biliyor bu 
#ayrica unutma cbind iki matrisi birbirine ekliyor


#console kismina direct sitedigin seyia aratabilirsin

m1[1:3,1]#bu kisimda demek istenilen 1 satirdaki ilk uc degeri yazmasini daglar
#TURKCESİ: 1 sat  irdaki 1 ve 3 degerler arasindaki degerleri yazdi

# ------yukardakinin dememk istedigi 1 satirdelki 1 ve 3 degerler arasindaki deferleri yazdirma


        #KOLON VE SUTUN ADLARİNİN KAFANA GORE DEGİŞTİREBİLİRSİN
      
      colnames(m1)<-c("age","city","contry","kg")
      rownames(m2)<-c("bir","iki","uc","dort","bes","alti","yedi","sekiz","dokuz","on")#yav iste bu sekil islmler degişiyor ama girdigin amtrix ile deger girdgin kolon ismi est olsun
  
    
      
      mbuyuk <- matrix(1:4000, ncol = 4, nrow = 1000)
      rownames(mbuyuk) <- paste("insan", 1:1000, sep = "-")



'''#------matrix ornekk

a<-matrix(1:16,4,4)
diag(a)#kosegenleradeki elemanlari yazdirmaya yarar
sum(diag(a))

#sum fonk senin toplama yapmani saglar

diag(c(1,1,1,1))#birim matrix

#diag ile direk matric olusturabilirsin

#t harfi tansporsunu alir liner cebirden hatierla(matrisi ters cevirir),

t(a)

det(a)#determinatini allir

#solve ise senin direkt tersini alir

y<-matrix(veri$write,ncol=1)#y degeri ile indirdigin kisima ekleme yapmani saglar $ işareti ile dosyaya ulasmani sagalr

x<-cbind(1,veri$math,veri$science,veri$female)


#%*% matrisler arasi carpma işlemi anlamina gelir

 
solve(t(x)%%x)%%t(x)%*%y'''
