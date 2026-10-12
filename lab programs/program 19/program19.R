# Program 19: Regression model on an advertising dataset (Sales ~ Spend) and predict Sales

advertising <- data.frame(
  Spend = c(1000, 4000, 5000, 4500, 3000, 4000, 9000, 11000, 15000, 12000, 7000, 3000),
  Sales = c(9914, 40487, 54324, 50044, 34719, 42551, 94871, 118914, 158484, 131348, 78504, 36284)
)
print(advertising)

# Build the linear regression model
model <- lm(Sales ~ Spend, data = advertising)
summary(model)
coef(model)

# Predict Sales for new advertising spend values
new_spend <- data.frame(Spend = c(2000, 6000, 10000, 20000))
new_spend$Predicted_Sales <- round(predict(model, new_spend), 2)
print(new_spend)

# Plot with regression line
plot(advertising$Spend, advertising$Sales, pch = 19, col = "blue",
     main = "Sales vs Advertising Spend", xlab = "Spend", ylab = "Sales")
abline(model, col = "red", lwd = 2)
