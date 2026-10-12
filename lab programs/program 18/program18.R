# Program 18: Create graphs in R - boxplot, histogram, bar plot, line chart, scatter plot

# Boxplot
boxplot(mpg ~ cyl, data = mtcars, col = c("gold", "skyblue", "salmon"),
        main = "Boxplot: Mileage by Number of Cylinders",
        xlab = "Cylinders", ylab = "Miles per gallon")

# Histogram
hist(mtcars$mpg, breaks = 8, col = "steelblue", border = "white",
     main = "Histogram of Mileage", xlab = "Miles per gallon")

# Bar plot
barplot(table(mtcars$gear), col = "darkorange",
        main = "Bar Plot: Cars by Number of Gears",
        xlab = "Gears", ylab = "Count")

# Line chart
months <- 1:12
sales  <- c(120, 135, 150, 145, 170, 190, 210, 205, 180, 175, 200, 230)
plot(months, sales, type = "o", col = "blue", lwd = 2, pch = 19,
     main = "Line Chart: Monthly Sales", xlab = "Month", ylab = "Sales",
     xaxt = "n")
axis(1, at = months, labels = month.abb)

# Scatter plot
plot(mtcars$wt, mtcars$mpg, pch = 19, col = "darkgreen",
     main = "Scatter Plot: Weight vs Mileage",
     xlab = "Weight (1000 lbs)", ylab = "Miles per gallon")
abline(lm(mpg ~ wt, data = mtcars), col = "red", lwd = 2)
