install.packages("caret", dependencies=TRUE)
library(caret)

wine_df<-read.csv(file="wine.csv", header=T)
wine_df$Class <- as.factor(wine_df$Class)
str(wine_df)
df <- wine_df
set.seed(2030)
total <- sample(nrow(df), nrow(df)*0.7)
train <- wine_df[total ,]
test <- wine_df[- total,]
train_x <- train[,1:13]
train_y <- train[,14]
test_x <- test[,1:13]
test_y <- test[,14]
ctrl <- trainControl(method="repeatedcv",number=10, 
                     repeats = 5)  
customGrid <- expand.grid(k=1:10)
knnFit <- train(Class ~ ., 
                data = train, 
                method = "knn", 
                trControl = ctrl, 
                preProcess = c("center","scale"),
                tuneGrid=customGrid,
                metric="Accuracy")

knnFit # 모델에 대해 실행
plot(knnFit) #실행 모델 시각화
pred_test <- predict(knnFit, newdata=test) #예측
confusionMatrix(pred_test, test$Class) #검증 메트릭스
importance_knn <- varImp(knnFit, scale=FALSE) # 모델에서 중요한 속성 파악
plot(importance_knn)

