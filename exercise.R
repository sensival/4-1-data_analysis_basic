#fold####
scan("score.txt", sep="\n", what="")





a<-scan("")
b<-scan(what="")

a<-readline("")
b<-as.numeric(readline(""))

a<-'a'
b<-'b'
c<-'c'
cat(sep="&", a,b,c )

a <- list(1:7, 4:10)
a
write.csv(a,"a_csv,txt", row.names=T)

a<-1
class(a) 
a<-2L 
class(a)


num_1 <- 0
num_2 <- 10
as.logical(num_1)
as.logical(num_2)


log_1 <- TRUE
log_2 <- FALSE
as.numeric(log_1)
as.numeric(log_2)
as.integer(log_1)
as.integer(log_2)


num_1 <- 0
as.character(num_1)

a<-1
b<-3
cat(a+b, a-b, a*b, a/b)

c<-0
d<-10
cat(c&b, c|d,!c, !d)


a<-"ABC"
class(a)


num_1 <- 0
num_2 <- 10
log_1 <- TRUE
log_2 <- FALSE
date_1 <- "2030-12-30"
date_2 <-as.Date(date_1, format = "%Y-%m-%d")
as.character(num_1)
as.character(log_1)
as.character(date_2)



as.numeric("10")
as.numeric("10.5")
class(as.numeric("10.5"))
as.logical("TRUE")
as.logical("FALSE")
as.logical("1")
as.logical("a")
as.numeric("b")
as.numeric("T")
as.logical("T")
date_1 <- "2030-12-30"
date_2 <-as.Date(date_1, format = "%Y-%m-%d")


temp2 <- as.logical("string") # 문자열 로지컬 안됨
temp3 <- as.logical("T")
temp4 <- as.logical("F")
temp3 <- as.logical("T") 
temp5 <- as.logical("True")
temp6 <- as.logical("False")
temp7 <- as.logical("TRUE")
temp8 <- as.logical("FALSE")
temp9 <- as.logical("true")
temp10 <- as.logical("false")
paste(temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10 )


a<-as.Date("2030-12-30")
class(a)


temp <- 2020-12-30 # 숫자형으로 올리면 2020-12-30=1978로 입력됨
c <- as.Date(temp)
c # 1975-06-02나옴

temp<-"30.12.30"
date1 <- as.Date(temp, "%y.%m.%d") # yyyy-mm-dd이 아닌 경우는 포맷필요
# 대문자 %Y는 네글자 년도
date1

Sys.Date()

Sys.Date() +1 

a<-"hi good"
nchar(a)

paste("hi","nice","to","see" ,"you")
paste0("hi","nice","to","see" ,"you")


a<- TRUE
as.numeric(a)
as.character(a)



a <- "hanyang" 
b <- "cyber univ"
print(a); print(b)
class(a)
class(b)
nchar(a)
nchar(b)
paste(a,b)
paste(a, b, sep = ",")
paste0(a,b)
a+b


a<-T
b<-F
a==b
(a==b) & (!a)
(a==b) | (!a)

a <-c(1,2,3,4,5)
b <-c(1,2,3)
a %in% b



# 샘플 벡터 생성
vec <- c(1, 2, NA, 4, NA, 6)

# 결측치가 있는 위치를 알아냄
na_positions <- which(is.na(vec))

print(na_positions)


# 샘플 벡터 생성
vec <- c(1, 2, NA, 4, NA, 6)

# 결측치를 제외한 벡터 생성
clean_vec <- vec[!is.na(vec)]

print(clean_vec)



a <- list(num=c(1:5),score=c(99, 88))
a$score>=90 # TRUE FALSE
a$num[a$score>=90] # 1 3 5 TRUE FLASE를 반복함
class(a[1][1])
a[1][1]


a <- matrix(1:12, nrow=3, ncol=4, byrow=T) 
colnames(a)<-c('a','b','c','d') # 크기 다르면 안 들어감
rownames(a)<-c('kim','lee','park')
a[1:2,-1]

a[a%%2==0, drop=F]
a[2,]>=4
a[a[2,]>=4, drop=F]
mat1<-matrix(1:6, ncol = 3, byrow=T)
mat1[mat1[,3]>3,,drop=F]#3열의 값이 3보다 큰 걸 가지고 있는 행 필터링
mat1[mat1[,2]==2,,drop=F]#2열의 값이 2인걸 가지고 있는 행 필터링

a<-matrix(1:12, nrow=3)
a<-a[,-c(1,3)] # 열삭제
mat1[2,2,drop=F]# 인덱싱시 drop은 3번째

# 필터링 ####
a[a%%2==0]
mat1<-matrix(1:6, ncol = 3, byrow=T)
mat1[mat1[,3]>3,,drop=F]#3열의 값이 3보다 큰 걸 가지고 있는 행 필터링, drop 3번째인수
mat1[mat1[,2]==2,drop=F]#2열의 값이 2인걸 가지고 있는 행 필터링, drop 3번째인수
