# 입력 ####
a <- scan("")
2
3
4

print(a)

b <- readline("")
hi hycu!

print(b)

# 출력 ####
print(a, b) # error
cat(a, b)
cat(a, "\t", b)
cat(a,b, sep = " ")


# 디렉토리 변경 ####
setwd("C:/Users/wogns/OneDrive/바탕 화면/Data_study/R스크립트")
getwd()

# 피일 읽기 ####
df1 <- read.csv("company.csv", header = T, encoding = "UTF-8")
df1
df2 <- read.table("company.csv", header = T, encoding = "UTF-8", sep = ",")
df2

# 파일 내보내기 ####
write.csv(df1, "company2.csv")

# 날짜형 ####
temp <- 2020-12-30 # 숫자형으로 올리면 2020-12-30=1978로 입력됨
c <- as.Date(temp)
class(c)
c # 1975-06-02나옴

temp<-"30.12.30"
date1 <- as.Date(temp, "%y.%m.%d") # yyyy-mm-dd이 아닌 경우는 포맷필요
# 대문자 %Y는 네글자 년도
date1

Sys.Date()

Sys.Date() - date1

# 논리, 숫자, 문자 형변환 ###
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
paste(temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10 ) # 논리나타내는 문자들만 가능


#벡터 자료형####
# 문자>숫자>논리 순서로 강력함. 벡터 자료형은 동일하게 통일됨
vec_1 <-c(1,2,3)# 그냥 요소 입력
vec_2 <-seq(1,10,2) # 1부터 10까지 2간격
length(vec_2)
vec_3<- seq(1,15,length=10) # 1부터 15까지 10개 일정간격으로
vec_3
vec_4 <-rep(1:2, 2, each=5) # 1~2까지의 요소 두번반복하는데 각 요소 5번
vec_4
vec_5 <- 1:10
vec_5
vec_6 <-c(1,2,3,4,5)
names(vec_6) <- c("a","b","c","d",'e')
vec_6# 벡터길이보다 길게 네이밍하면 에러 짧으면 남은거 NA 처리


#