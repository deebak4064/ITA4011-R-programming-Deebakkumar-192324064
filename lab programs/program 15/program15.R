# Program 15: Exploratory data analysis on the iris dataset

library(reshape2)

dim(iris)
str(iris)
summary(iris)

# Standard deviation of each numeric column
sapply(iris[, 1:4], sd)

# Quantiles
sapply(iris[, 1:4], quantile)

# Group by Species: mean of each measurement
aggregate(. ~ Species, data = iris, FUN = mean)

# Pivot table: mean of each variable by Species
iris_melt <- melt(iris, id.vars = "Species")
dcast(iris_melt, Species ~ variable, mean)

# Categorical grouping of Sepal.Length
iris$Sepal.Category <- cut(iris$Sepal.Length,
                           breaks = c(4, 5.5, 6.5, 8),
                           labels = c("Short", "Medium", "Long"))
table(iris$Sepal.Category)
table(iris$Species, iris$Sepal.Category)
