# Program 21: Logistic regression on iris (80/20 split) with a confusion matrix
# Species has 3 classes, so multinomial logistic regression (nnet::multinom) is used.

library(nnet)

set.seed(2026)
train_idx <- sample(1:nrow(iris), size = 0.8 * nrow(iris))
train <- iris[train_idx, ]
test  <- iris[-train_idx, ]
cat("Training rows:", nrow(train), " Test rows:", nrow(test), "\n")

# Build the model
model <- multinom(Species ~ Petal.Length + Petal.Width, data = train, trace = FALSE)
summary(model)

# Predict on the test set
pred <- predict(model, newdata = test)
print(head(data.frame(Actual = test$Species, Predicted = pred), 10))

# Evaluate with a confusion matrix
conf_mat <- table(Predicted = pred, Actual = test$Species)
print(conf_mat)

accuracy <- sum(diag(conf_mat)) / sum(conf_mat)
cat("Accuracy:", round(accuracy * 100, 2), "%\n")
