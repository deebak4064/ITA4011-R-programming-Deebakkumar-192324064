# Program 16: Explore the USArrests dataset

print(head(USArrests))
summary(USArrests)

# State with the largest rape arrests
rownames(USArrests)[which.max(USArrests$Rape)]

# States with the maximum and minimum murder rates
rownames(USArrests)[which.max(USArrests$Murder)]
rownames(USArrests)[which.min(USArrests$Murder)]

# Correlation among features
round(cor(USArrests), 3)

# States above the median assault arrests
med_assault <- median(USArrests$Assault)
rownames(USArrests)[USArrests$Assault > med_assault]

# States in the bottom 25% for murder
q1_murder <- quantile(USArrests$Murder, 0.25)
rownames(USArrests)[USArrests$Murder < q1_murder]

# Visualizations
hist(USArrests$Murder, col = "steelblue", border = "white",
     main = "Histogram of Murder Arrests", xlab = "Murder arrests (per 100,000)")

plot(density(USArrests$Assault), main = "Density of Assault Arrests",
     xlab = "Assault arrests (per 100,000)", lwd = 2, col = "darkred")

pairs(USArrests, main = "Scatterplot Matrix of USArrests", pch = 19, col = "darkgreen")

plot(USArrests$UrbanPop, USArrests$Murder, pch = 19, col = "purple",
     main = "Murder vs Urban Population", xlab = "Urban population (%)",
     ylab = "Murder arrests")
abline(lm(Murder ~ UrbanPop, data = USArrests), col = "red", lwd = 2)

top10 <- head(USArrests[order(-USArrests$Murder), ], 10)
par(mar = c(8, 4, 4, 2))
barplot(top10$Murder, names.arg = rownames(top10), las = 2, col = "tomato",
        main = "Top 10 States by Murder Arrests", ylab = "Murder arrests")
