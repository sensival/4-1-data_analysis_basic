# 데이터시각화를위한패키지-ggplot2 ####
install.packages("ggplot2")
library(ggplot2)
library(dplyr)
# 패키지설치확인
if(!require(ggplot2)) install.packages("ggplot2")


# 선 그래프 ####
if(!require(dplyr)) install.packages("dplyr"); library(dplyr)
if(!require(ggplot2)) install.packages("ggplot2"); library(ggplot2)
str(Orange)
Orange %>% filter(Tree==1) %>% ggplot(aes(age, circumference))+geom_line()
Orange %>% filter(Tree==1) %>% ggplot(aes(age, circumference))+geom_line(color = 'red')


ggplot(Orange, aes(age, circumference, color = Tree)) + geom_line()
ggplot(Orange, aes(age, circumference)) + geom_line(aes(color = Tree))


# 막대 그래프 ####
mpg <-as.data.frame(ggplot2::mpg)
#::를 이용하면 특정패키지에 들어있는 함수나 데이터 지정가능

# y축을 해당변수의 값 그대로 사용하여 그래프를 출력함
class_counts <- as.data.frame(table(mpg$class))
colnames(class_counts) <- c("class", "count")
ggplot(data=class_counts, aes(x=class, y=count, fill=class)) +geom_bar(stat="identity", color="black")


# 막대그래프의 class변수 수에 따라 막대 테두리색이 여러개로 지정
ggplot(data=mpg, aes(x=class, color=class)) + geom_bar() 
ggplot(data=mpg) + geom_bar(aes(x=class, color=class))


# 히스토그램 ####
if(!require(MASS)) install.packages("MASS"); library(MASS)

data("Cars93")  
ggplot( Cars93, aes(x=Passengers)) +  geom_histogram(fill="#F8766D")   
#ggsave("histogram_col.jpg", dpi = 300) 

# 박스그래프 ####
p <- ggplot(ToothGrowth, aes(x=dose, y=len)) + geom_boxplot()
p
#  notch = True 인자를 통해서, box plot 모양 변경
ggplot(ToothGrowth, aes(x=dose, y=len)) + geom_boxplot(notch=TRUE)
