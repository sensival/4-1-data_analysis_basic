# dplyr설치 ####
install.packages('dplyr')
library(dplyr)
# 설치 되었으면 실행, 아니면 설치후 실행
if(!require(dplyr)) install.packages("dplyr"); library(dplyr)

# 체인함수 ####
# 벡터
a<-c(1:5)
a %>% sum
a

# 리스트
a<-list(no=c(1:5))
a
a$no %>% sum
a

# 팩터
a<-factor(c(1:10))
a %>% sum # 팩터는 문자라 수식 적용 안됨
a<-as.integer(a) # numeric이나 integer로 변경
a %>% sum

# 행렬
a<-matrix(1:12, nrow=2)
a %>% sum
a

#5 데이터프레임, 사용자 정의 함수
aa<-function(a){
  return (a+10)
}
a<-data.frame(name=c('a','b'),score=c(100,99))
a$score %>% aa %>% mean %>% aa # 110 109 -> 109.5 -> 119.5
a$score%>%mean
a$score%>%mean%>%sum


#파일 읽기 ####
a<-read.csv("1.csv")
a
class(a)

# 원하는 행만 읽기 filter ####
a%>%filter(mid>=25) # 원하는 행을 출력. 열의 조건만 입력 가능
a%>%filter(mid>=25 & final>=25 )
a%>%filter(mid>=25 & final>=25 & attend==20)

# 원하는 열만 읽기 select ####
a%>% select(1:3) #열 범위만 제시(인덱싱방법과 같음 )
a%>% select(-1:-3)
a%>%filter(mid>=25)%>%select(c(1,3))
a%>%filter(quiz>=15)%>% select(1:4)

# 정렬하기 arrange ####
a%>% arrange(final)
a%>% arrange(desc(final))

# 중복값 제거 ####
a%>% distinct(name)
a%>% distinct(dept)
# dept의 중복을 제거하고 난 후 데이터 프레임 출력 .붙이는것주의 앞에 나온값만 출력
a%>% distinct(dept, .keep_all=T)
a%>%distinct() #행전체가 중복인 경우만 적용됨

# 샘플링 ####
a %>% sample_n(2)
a%>% sample_frac(0.3)

# groupby summarize ####
# dept를 기준으로 quiz의 mean를구하기
a%>% group_by(dept) %>% summarize(mean(quiz))
# dept를 기준으로 quiz의 mean과final의 sum을 구하기
a%>% group_by(dept) %>% summarize(q_mean=mean(quiz),f_sum= sum(final))
# <chr>   <dbl> <int> 는 열 타입 문자, 실수, 정수

# 조인 ####
a<-read.csv("1.csv")
test<-read.csv("2.csv")
a%>% bind_rows(test)
a%>% bind_cols(test) #행갯수가 다르면 error. 열이름이 똑같으면 rename
a%>% inner_join(test)# by=c(“열1=열2“) 
# 와 같이 공통되는 열 이름 적어도 됨. 결과는 test 중심으로나옴



