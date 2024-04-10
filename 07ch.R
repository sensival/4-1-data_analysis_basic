setwd("C:/Users/wogns/OneDrive/바탕 화면/Data_study/R스크립트")
#행렬선언####
a <- matrix(1:12, nrow=3, ncol=4, byrow=T) # nrow나 ncol 중 하난 있어야 함. 
# 만약 요소개수랑 row x col이 맞지 않으면 잘려서 or 반복되어 나오면서 warning
# 행우선 출력 byrow=T
a
a <- matrix(1:13, nrow=3, byrow=T) 
a # 3x5 배열 만들어지면서 마지막 1, 2로 더 채움

# 행, 열이름 지정####
a <- matrix(1:12, nrow=3, ncol=4, byrow=T) 
colnames(a)<-c('a','b','c','d','e') # 크기 다르면 안 들어감
rownames(a)<-c('kim','lee','park')
a



# bind ####
a <-c(1:5)
b <-c(6:10)  #벡터의 합으로 만들기
a
b
test1<-cbind(a,b)
test1
test2<-rbind(a,b)
test2


# matrix연산 ####
mat1<-matrix(1:9, nrow = 3)
mat2<-matrix(c(10,20,30,40,50,60,70,80,90), nrow = 3)
mat1+10 #대입은 아님
mat1+mat2 # 크기다르면 연산 x
colSums(mat1)
rowSums(mat1)

# 인덱싱 ####
a<-matrix(1:12, nrow=3)
a<-a[,-c(1,3)] # 열삭제


# 필터링 ####
a[a%%2==0, drop=F]
mat1<-matrix(1:6, ncol = 3, byrow=T)
mat1[mat1[,3]>3,,drop=F]#3열의 값이 3보다 큰 걸 가지고 있는 행 필터링
mat1[mat1[,2]==2,,drop=F]#2열의 값이 2인걸 가지고 있는 행 필터링

# 배열####
a <- array(1:12, dim=c(3,2,2))
a
