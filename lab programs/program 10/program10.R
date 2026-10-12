# Program 10: Create and explore the data frame exam_data

exam_data <- data.frame(
  name = c("Anastasia", "Dima", "Katherine", "James", "Emily",
           "Michael", "Matthew", "Laura", "Kevin", "Jonas"),
  score    = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify  = c("yes", "no", "yes", "no", "no", "yes", "yes", "no", "no", "yes")
)
print(exam_data)
str(exam_data)
summary(exam_data)

# Extract specific columns
print(exam_data[, c("name", "score")])

# Extract specific rows
print(exam_data[c(3, 5), ])

# Extract rows with score above 15
print(exam_data[exam_data$score > 15, ])

# Add a new row
new_row <- data.frame(name = "Kumar", score = 15.5, attempts = 1, qualify = "yes")
exam_data <- rbind(exam_data, new_row)
print(exam_data)

# Add a new column
exam_data$country <- c("USA", "USA", "USA", "USA", "UK", "USA",
                       "USA", "India", "USA", "USA", "India")
print(exam_data)

# Sort by name, then by descending score
print(exam_data[order(exam_data$name), ])
print(exam_data[order(-exam_data$score), ])

# Save to file
write.csv(exam_data, "exam_data.csv", row.names = FALSE)
print("Data saved to exam_data.csv")
print(read.csv("exam_data.csv"))
