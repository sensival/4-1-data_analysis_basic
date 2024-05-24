# 결측치 처리1 ####
df<-data.frame(no=c(1:5),names=c("K","L","P","C","Y"), score1=c(100,NA,80,70,60),score2=c(100,90,80,70,60))
mean(df$score1) #NA
mean(df$score1, na.rm=T) #NA
sd(df$score1, na.rm=T) #NA
#df[is.na(df$score1),]<-mean(df$score1, na.rm=T) # 이렇게하면 행 다바뀜
df[is.na(df$score1),"score1"]<-mean(df$score1, na.rm=T) # 이렇게 열도 지정함
df
plot(df)
colSums(df)
colMeans(df)
rowMeans(df)
rowSums(df)

# 결측치 검색 ####
a<-data.frame(score1=c(100, NA, 99, 88), score2=c("A","B","A","B"))

mean(a$score1, na.rm=T)
sd(a$score1, na.rm=T)
sum(is.na(a))
table(is.na(a))
na.omit(a)
which(is.na(a),T) # 행/열 정확히 알려달라->T
which(is.na(a)) # 결측치 행만 리턴 -> F (디폴트)
complete.cases(a)


# 결측치 처리2 ####
a<-data.frame(score1=c(100, NA, 99, 88), score2=c("A","B","A","B"))
a$score1[is.na(a$score1)]<-"#"
a


# 결측치 처리3 ####
data("airquality")
str(airquality)
head(airquality)
sum(is.na(airquality))

colMeans(airquality)
colMeans(airquality, na.rm=T)

colSums(is.na(airquality))
airquality2<-na.omit(airquality)
str(airquality2)
complete.cases(airquality2)
colMeans(airquality2)
colMeans(airquality2, na.rm=T)


# 결측치 처리 4 ####
name<-c('h','y','c','u')
score<-c(100,99,100,100)
st<-data.frame(name,score) #st1
class_a<-matrix(c(99,88,100,99,98,100), nrow=2)
class_b<-matrix(c(100,100,99,99,100,100), nrow=2)
st2<-data.frame(class_a,class_b) #st2
colnames(st2)<-c('sub1','sub2','sub3','sub4','sub5','sub6')
rownames(st2)<-c('kim hy','lee hy')


# 결측치 처리 5 ####
library(MASS)
x<-Cars93
str(x)
is.na(x)
sum(is.na(x))
table(is.na(x))
#속성별 결측치를 구해봅시다.
sum(is.na(Cars93$Manufacturer)) 
sum(is.na(Cars93$Price))
sum(is.na(Cars93$Rear.seat.room))
sum(is.na(Cars93$Luggage.room))
colSums(is.na(Cars93))
sum(x$Rear.seat.room)
mean(x$Rear.seat.room)
sum(x$Rear.seat.room, na.rm = TRUE)
mean(x$Rear.seat.room, na.rm = TRUE)
#결측값이 들어있는 행 전체를 데이터 셋에서 제거해 봅시다: na.omit()
temp<- na.omit(Cars93)
str(temp)
complete.cases()
sum(is.na(Cars93))
# Cars93 데이터 프레임의 “Rear.seat.room" 칼럼 내 결측값이 있는 행 전체 삭제해 봅시다
sum(is.na(Cars93))
Cars93_1 <- Cars93[ complete.cases(Cars93[ , c("Rear.seat.room")]), ]
sum(is.na(Cars93_1)) 
Cars93_2 <- Cars93[ complete.cases(Cars93[ , "Rear.seat.room"]), ]
sum(is.na(Cars93_2)) 
# Cars93 데이터 프레임의 20~24번째 칼럼 내 결측값이 있는 행 전체 삭제>
Cars93_3 <- Cars93[ complete.cases(Cars93[ , c(20:24)]), ]
sum(is.na(Cars93_3)) 