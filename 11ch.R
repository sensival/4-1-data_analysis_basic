# 사용자 점의 함수 ####
# 반환값 없음
test<-function(){
  print("good!!!")
}
#반환값 있음
test1<-function(){
  print("good!!!")
  return (1+2) #괄호 반드시 해야함
}
test();test1() #결과는?

# 인자 없음
test <-function(){
    print("good!!!")
}

# 인자 있음
test2<-function(val1){
    print(val1)
  }

#인자 있고, 반환값 있음
test3<-function(val1){
    print(val1)
    return (val1+100)
  }
test();test2(1);test3(1) #결과는?

# 사칙연산하는 함수, return 값 여러개
calcul<-function(a,b){
  val=c(add=a+b, sub=a-b,mul=a*b,dib= a/b)
  return (val)
}
calcul(1,2)


# 조건문 ####
# 홀수짝수
a<-10
if(a%%2==0){
  print("짝")
}else{
  print("홀")
}

# 구매액에 따른 등급 부여
# 10만원 이상 : 골드 / 5만원 이상 : 실버 / 이외 : 브론즈
item<-100000
if(item>=100000){
  print("골드")}
else if(item>=50000){
  print("실버")}
else{
  print("브론즈")}

#ifelse
a<-10
ifelse(a%%2==0,"even","odd“)


# 반복문 ####

# for문
for(i in 2:9){
  t=2*i
  print(t) }
  
# while문
i=1
while(i<=9){
  t=2*i
  print(t) 
  i=i+1
}

#repeat 문- 잘 안 씀
i=1
repeat{
  t=2*I
  print(t)
  if(i>=9) break
  i=i+1 
}
  
a<-0
while(a<=100){
  a=a+1
  if(a%%3==0){next}
  if(a==90){break}
  if(a==99){exit}
  print(a)
}

test<-data.frame(
          Age=c(20,21,22),
          Class=c('A','A','B'),
          Sex=c('F','F','M'))

for(i in 1:nrow(test)){
  if(test$Class[i]=='A'){
  print(test$Age[i])
  }
  else{
  print(test$Sex[i]) }
}



# 특수 반복문 ####
a<-c("han","yang","cyber","univ")
s_len<-c()
for(i in 1:length(a)){
  s_len[i]<-nchar(a[i])}
  
print(s_len)

a<-c("han","yang","cyber","univ")
s_len<-sapply(a,nchar)
print(s_len)


b<-function(x,y){
  return(ifelse(x>=y,"pass","fail"))
}

score<-c(100,88,70,100,99)
result<-sapply(score,b,80)
print(result)