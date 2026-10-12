# Program 20: Multiple regression on ChickWeight with Time and Diet as predictors

cw <- as.data.frame(ChickWeight)

model <- lm(weight ~ Time + Diet, data = cw)
summary(model)

# Predict weight for the existing data
cw$predicted <- predict(model, cw)
print(head(cw[, c("weight", "Time", "Diet", "predicted")], 10))

# Predict weight for new chicks
new_data <- data.frame(Time = c(10, 15, 21, 21),
                       Diet = factor(c(1, 2, 3, 4), levels = levels(cw$Diet)))
new_data$Predicted_Weight <- round(predict(model, new_data), 2)
print(new_data)

# Model error
residuals_cw <- cw$weight - cw$predicted
mae  <- mean(abs(residuals_cw))
mse  <- mean(residuals_cw^2)
rmse <- sqrt(mse)
cat("MAE :", round(mae, 3), "\n")
cat("MSE :", round(mse, 3), "\n")
cat("RMSE:", round(rmse, 3), "\n")
cat("R-squared:", round(summary(model)$r.squared, 4), "\n")
