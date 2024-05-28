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
# ggplot(aes(x=c(1:5), y=(1:5)))+geom_point(color = 'red') 이런건 안됨. dataframe에서 나와야함
Orange %>% filter(Tree==1) %>% ggplot(aes(age, circumference))+geom_line()
Orange %>% filter(Tree==1) %>% ggplot(aes(age, circumference))+geom_line(colour = 'red')
ggplot(Orange, aes(age, circumference, colour = Tree)) + geom_line()
ggplot(Orange, aes(age, circumference)) + geom_line(aes(color = Tree))


# 막대 그래프 ####
mpg <-as.data.frame(ggplot2::mpg)
#::를 이용하면 특정패키지에 들어있는 함수나 데이터 지정가능

# y축을 해당변수의 값 그대로 사용하여 그래프를 출력함
class_counts <- as.data.frame(table(mpg$class))
colnames(class_counts) <- c("class", "count")
ggplot(data=class_counts, aes(x=class, y=count, fill=class)) +geom_bar(stat="identity", color="black")
ggplot(data=class_counts, aes(x=class, y=count, fill=class)) +geom_bar(stat="identity", colour="black")

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
# ggplot2 패키지 로드
library(ggplot2)

# iris 데이터셋을 사용하여 박스 그래프 그리기
ggplot(data = iris, aes(x = Species, y = Sepal.Length)) +
  geom_boxplot() +
  labs(title = "Boxplot of Sepal Length by Species",
       x = "Species",
       y = "Sepal Length") +
  theme_minimal()


ggplot(data=iris, aes(x=Species, y=Sepal.Length))+theme_light()+geom_boxplot(aes(fill=Species), outlier.shape=21)


# Orange ####
ggplot(Orange, aes(x=age, y=circumference, fill=Tree))+geom_bar(stat='identity')
ggplot(Orange, aes(x=age, y=circumference))+geom_line(size=1, aes(color=Tree))
ggplot(Orange, aes(x=age, y=circumference, color=Tree))+geom_point()
ggplot(Orange, aes(x=age, y=circumference, color=Tree))+geom_line(size=4)


# Cars93 ####
if(!require(dplyr)) install.packages("dplyr"); library(dplyr)
if(!require(ggplot2)) install.packages('ggplot2'); library(ggplot2)
if(!require(MASS)) install.packages("MASS"); library(MASS)
data('Cars93')

#내부에색상을지정한히스토그램을그리며, x축에탑승자수, 탑승자수에따른분포를출력함
ggplot( Cars93, aes(x=Passengers)) +  
geom_histogram(fill="#F8766D")   
                                        #ggsave("histogram_col.jpg", dpi = 300)
