# Program 17: Explore the Titanic dataset
# (titanic.csv is in the same folder as this script)

titanic <- read.csv("titanic.csv")
str(titanic)

titanic$Survived <- factor(titanic$Survived, levels = c(0, 1),
                           labels = c("Died", "Survived"))
titanic$Pclass <- factor(titanic$Pclass, labels = c("1st", "2nd", "3rd"))

# Bar chart of survival vs class
surv_class <- table(titanic$Survived, titanic$Pclass)
print(surv_class)
barplot(surv_class, beside = TRUE, col = c("tomato", "seagreen"),
        legend.text = TRUE, args.legend = list(x = "topleft"),
        main = "Survival by Passenger Class",
        xlab = "Passenger class", ylab = "Number of passengers")

# Modified plot: survival by class, split by gender
par(mfrow = c(1, 2))
for (g in c("male", "female")) {
  sub <- titanic[titanic$Sex == g, ]
  barplot(table(sub$Survived, sub$Pclass), beside = TRUE,
          col = c("tomato", "seagreen"), ylim = c(0, 320),
          legend.text = TRUE, args.legend = list(x = "topleft"),
          main = paste("Survival by Class -", g),
          xlab = "Passenger class", ylab = "Number of passengers")
}
par(mfrow = c(1, 1))
print(table(titanic$Sex, titanic$Survived))

# Histogram of Age
summary(titanic$Age)
hist(titanic$Age, breaks = 20, col = "skyblue", border = "white",
     main = "Histogram of Passenger Age", xlab = "Age (years)")
