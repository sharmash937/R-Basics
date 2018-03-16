data <- iris
table(iris$Species)
#Data Partition
set.seed(123)
ind <- sample(2, nrow(data), replace = T, prob=c(0.7,0.3))
train <- data[ind==1,]
test <- data[ind==2,]

#random forest
library(randomForest)
set.seed(222)
rf <- randomForest(Species~. , data=train)
rf
print(rf)
attributes(rf)
rf$confusion


#Prediction and confusion matrix - train data
library(caret)
p1 <- predict(rf, train)
head(p1)
head(train$Species)

confusionMatrix(p1, train$Species)

p2 <- predict(rf, test)
confusionMatrix(p2, test$Species)


#Error rate
plot(rf)
#OOB vs number of trees

#tune rf
t <- tuneRF(train[,-5], train[,5],
       stepFactor = 0.5,
       plot = T,
       ntreeTry = 300,
       trace = T,
       improve = 0.05)


rf <- randomForest(Species~. , data=train, ntree = 300,
                   mtry = 2, importance = T, proximity = T)

print(rf)

#No. of nodes for the trees
hist(treesize(rf), main = "number of trees", col = "green")


#variable importance
varImpPlot(rf)
importance(rf)


varUsed(rf)














