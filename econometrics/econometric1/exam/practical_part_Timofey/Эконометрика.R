library(ggplot2)
library(lmtest)
library(dplyr)
library(tseries)

C <-read.table("data1.txt", sep="", dec=".", header = TRUE)
C

Cmodel<-lm(data = C, Ct~Yt_1+Crt+Sant+Costt)
summary(Cmodel)

# тест Голдфилда-Кванта
gqtest(Cmodel, fraction=0.33)
# тест Дарб??на-Уотсона
dwtest(Cmodel, alternative = c("greate"))

Cmodel2<-lm(data = C, Ct~Yt_1+Crt+Costt)
summary(Cmodel2)

Cmodel3<-lm(data = C, Ct~Yt_1+Sant+Costt)
summary(Cmodel3)

Cmodel4<-lm(?ata = C, Ct~Yt_1+Crt+Sant)
summary(Cmodel4)

C <-read.table("data2.txt?, sep="", dec=".", header = TRUE)
C

Cmodel<-lm(data = C, It~deltaYt_1+Crt+Sant+Costt)
summary(Cmodel)

# тест Голдфилда-Кванта
gqtest(Cmodel, fraction=0.33, data = C, order.by=c["deltaYt_1"])
# тест Дарбина-Уотсона
dwtest(Cmodel, alternative = c("greate")?

Cmodel2<-lm(data = C, It~deltaYt_1+Crt+Costt)
summary(Cmodel2)

Cmodel3<-lm(data ? C, It~deltaYt_1+Sant+Costt)
summary(Cmodel3)

Cmodel4<-lm(data = C, It~deltaYt_1+Crt+Sant)
summary(Cmodel4)

C <-read.table("data3.txt", sep="", dec=".", header = TRUE)
C
?Cmodel<-lm(data = C, Gt~0+Gt_1+Crt+Sant+Costt)
summary(Cmodel)

# тест Голдфилда-Кванта
gqtest(Cmodel, fraction=0.33, data=C, order.by=c["Gt_1"])
# тест Дарбина-Уотсона
dwtest(Cmodel, alternative = c("greate"))

Cmodel2<-lm(data = C? Gt~0+Gt_1+Crt+Costt)
s?mmary(Cmodel2)

Cmodel3<-lm(data = C, Gt~0+Gt_1+Sant+Costt)
summary(Cmodel3)

Cmodel4<-lm(data = C, Gt~0+Gt_1+Crt+Sant)
summary(Cmodel4)



