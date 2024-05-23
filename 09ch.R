# 데이터 프레임 생성####
#1
df<-data.frame(no=c(1:5),names=c("K","L","P","C","Y"), score=c(100,90,80,70,60))
df
rownames(df)<-c("a","b","c","d","e")
columns(df)
# 행렬을 미리 작성하여 조합하는 경우
class_a<-matrix(c(100,99,100,88,100,100),nrow=2)
class_b<-matrix(c(99,88,100,100,100,99,70,70), nrow=2)
class_b
mean(class_b[,3])
st<-data.frame(class_a,class_b);st
colnames(st)<-c('JAVA','c','c++','python','ML','deepL','xml',graphics)
colnames(st)
# 함수안에직접나열하는경우
st1<-data.frame(class_a=matrix(c(100,99,100,88,100,100),nrow=2), 
                class_b=matrix(c(99,88,100,100,100,99), nrow=2))
colnames(st1)<-c('JAVA','c','c++','python','ML','deepL')

#2
names=c("K","L","P","C","Y")
score=c(100,90,80,70,60)

#3
df1<-data.frame(names,score)
df1

#4
df2<-data.frame(matrix(1:12, nrow = 2),matrix(1:12,nrow = 2))
df2

# 행, 열 추가삭제 ####
df<-data.frame(A=c(1,2,3), B=c('a','b','c'))
t<-data.frame(A = 4, B ="d") # 열이름 다르면 에러
df<- rbind(df,t)
df

df<-data.frame(A=c(1,2,3), B=c('a','b','c'))
c_t<-c(4,5,6,7)
df<- cbind(df,c_t)
df

df<-data.frame(A=c(1,2,3), B=c('a','b','c'))
t<-data.frame(A = 4, B ="d") 
df<- rbind(df,t)
df<-df[-4,]
subset(df, select = A)


# 인덱싱 ####
df<-data.frame(no=c(1:5),names=c("K","L","P","C","Y"), score=c(100,90,80,70,60))
df
df[1,1]
df[,1] # 벡터형태
df[1,] # df 형태
df[1] # df 형태
df[[1]] # 벡터형태
df$names # 벡터형태
df$names[2]


# 필터링 ####
df<-data.frame(no=c(1:5),names=c("K","L","P","C","Y"), score=c(100,90,80,70,60))
df[df$score>90,]#score가 90넘는 학생 리턴
df[df$score != 90,]#score가 90넘는 학생 리턴
df[df$score>=mean(df$score),]



# 빈도함수 ####
df<-data.frame(no=c(1:6),names=c("K","L","P","C","Y","Y"), score=c(100,90,80,70,60,50))
unique(df)
table(df$names)
duplicated(df)
sd(df$score)