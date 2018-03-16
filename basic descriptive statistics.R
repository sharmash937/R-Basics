rm(list = ls())


require("datasets")
library("datasets")
cars
str(cars)

summary(cars)
summary(cars$speed)

fivenum(cars$speed)
boxplot.stats(cars$speed)


library("psych")
describe(cars)
