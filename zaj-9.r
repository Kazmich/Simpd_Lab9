#install.packages("C50")
library("C50")
data <- matrix(c(1000, 1300, 1000, 1300, 1200, 1300, 1400, 1200, 1300, 1100,
                 7, 6, 5, 6, 7, 6, 9, 7, 6, 6.5,
                 42, 53, 60, 42, 60, 53, 42, 60, 60, 54,
                 1199, 1399, 799, 1599, 1249, 1249, 3199, 1899, 1079, 1599), 10, 4)
labels <- c("1", "2", "3", "4","5")
result <- c(1, 4, 5, 4, 3, 4, 1, 2, 3, 2)
test <- factor(result, labels)
colnames(data) <- c("Speed", "Capacity", "Size", "Price")
ruleModel <- C5.0(x = data[,], y = test, rules = TRUE)
ruleModel
summary(ruleModel)
