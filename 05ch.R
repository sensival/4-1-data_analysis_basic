# 벡터 ####
z <- c(1,2,T)
w <- c(1,2,"h")
test1 <- seq(10,20,3)
test2<- rep(10:15,each=2)# each만 쓰거나 times= each= 둘다 쓸거면 명시 
print(test1)
print(test2)

# 산술 연산 ####
a <- c(1,3,5)
b <- c(2,0,-2)
a/b # 0으로 나누면 Inf

c <- c(1,2,3)
d <- c(4,5,6,7,8)
c-d #에러 요소의 길이가 다를때 서로 배수 관계여야 가능

c <- c(1,2,3)
d <- c(4,5,6,7,8,9)
c-d # 부족한 요소를 반복해서 빼기 연산

# 인텍싱 ####
score <- c(100, 88, 99, 100, 99, 100)
score[1]
score[3:5]
score[c(1,3,5)]
score[3:length(score)]
score[-3]
score[-c(3,5)]

# 필터링 ####
score <- c(100, 88, 99, 100, 99, 100)
score[score>=mean(score)]
score[score>=90]
score[score<=mean(score)]<--1 # true만 -1로 변경
print(score)


# 집합
x <- c(1,2,3,4,4)
y <- c(4,4,4,5,6)
intersect(x, y) # 4 중복제거
setdiff(x, y)
union(x, y)

# 결측치
a<-c(1,2,NA,5,8)
mean(a) # 결측치있으면 NA로 나옴
av=mean(a, na.rm=T) # na.rm=T로 결측치 빼고
a[3] <- av

# 평균, 분산, 중앙값, cumsum
b <-  c(90, 80,100,100, 99)
names(b)<- c('k','l','j','h','m')
sum(b)
mean(b)
var(b)
median(b)

sales <- c(100,99,88,100,100)
names(sales)<- c('1','2','3','4','5')
cumsum(sales)

