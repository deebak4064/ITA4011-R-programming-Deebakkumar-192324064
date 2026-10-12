# Program 11: Read a .csv file and display its contents
# (students.csv is in the same folder as this script)

data <- read.csv("students.csv")

print(data)

cat("Rows:", nrow(data), " Columns:", ncol(data), "\n")
names(data)
str(data)

print("First 3 records:")
print(head(data, 3))

print("Summary of Marks:")
summary(data$Marks)
