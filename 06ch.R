# 리스트의 인덱실 ####
#1
a <- list(1:3, 4:10)
a 

#2
b <- list(a=c(1:3),b=(4:10)) #a,b는 키값임
a # 1에서 선언한 리스트 출력, 1없이 호출하면 에러
b
b[[1]]
 
c<-list(a=(1:5), c(1:3),matrix(1:12,nrow=3))
c
c[[1]][1]
c$a[3]
c['a'] # $a 1 2 3 4 5 라고 키이름도 함께 출력
c[['a']] # 1 2 3 4 5 만



# 리스트의 필터링 ####
a <- list(num=c(1:5),score=c(99,88,99,100,100,100))
a$score>=90
a$num[a$score>=90]

# 필터조건이 더 많을 때
a <- list(num=c(1:5),score=c(99,88,99,100,100,100))
a$score>=90
a$num[a$score>=90] # 1 3 4 5 NA

# 필터조건이 더 적을때
a <- list(num=c(1:5),score=c(99, 88))
a$score>=90 # TRUE FALSE
a$num[a$score>=90] # 1 3 5 TRUE FLASE를 반복함


# 리스트 추가 삭제
a <- list(1,2,3)
a
a$num <- c(4:6) # 4번째 서브리스트자리로
a
a$num <- NULL
a<- NULL # 출력 NULL



# lapply, sapply ####
a <- list(1:5)
b <- list(4:10)
lapply(c(a,b), min) #[[1]] 1 [[2]] 4
sapply(c(a,b), min) # 1 4

a <- list(1:5, 0:5)
b <- list(4:10)
lapply(c(a,b), min) # [[1]] 1 [[2]] 0 [[3]] 4
sapply(c(a,b), min) # 1 0 4

a <- list(1:5, c(0,1,2))
b <- list(4:10)
lapply(c(a,b), min) # [[1]] 1 [[2]] 0 [[3]] 4
sapply(c(a,b), min) # 1 0 4




# 팩터 ####
test <- factor(c('sw', 'com', 'design'))
test
test2 <- factor(c(1,2,3,2,5,5,1,2,3,4,5))
test2 # 중복제거후 정렬
levels(test2)
nlevels(test2)



# iris 실습 ####
data()
str(iris)
levels(iris$Species)<- c("예쁜꽃","더예쁜꽃","아주예쁜꽃")
head(iris)
levels(iris$Species)
print(iris)
