# 1 ####
x <- 10 ; x
y = 20 ; y

a <- y ; a
A <- 100+200

print(a)
print(A)

a <- 40 ; print(a)

rm(a)
print(a)


# 2 ####
1+2
1-2
1*2
3%/%2 #몫
1%%2 #나머지
1^2

# 3 ####
a <- 1
b <- 0
a >= b
a < b
a <= b
a == b
a != b
a | b
a & b
! a

# lab1 ####
i <- 1
j <- 2
k <- i+j
print(k)

# lab2 ####
score1 <- 100
score2 <- 100
score3 <- 100
sum <- score1 + score2 + score3
print(sum)
average <- (score1 + score2 + score3)/3
print(average)

# lab6 ####
# 산술
(1+2)%/%3
(3*8)%%8

# 비교

# 논리
# 윤년
year <- 2030
cond1<- (year %% 4 == 0 & year %% 100 != 0)
cond2<- (year %% 400 == 0)
t = cond1 | cond2
print(t)

# 키에 따라 입장여부
height <- 160
cond3 <- height > 130
print(cond3)


# 결석 횟수에 따라
ab<- 1
cond4<- ab<3
print(cond4)

# lab8 ####
str(Orange)
Orange

# lab10 ####
a <- 10
b <- TRUE
c <- "hi"
d <- (a+10)*2
print(a+d)
print(a+b)
print(a+c)


