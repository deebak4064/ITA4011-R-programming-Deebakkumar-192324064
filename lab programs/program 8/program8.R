# Program 8: Generate random numbers from a normal distribution and count occurrences

set.seed(123)
x <- round(rnorm(50, mean = 50, sd = 10))
print(x)

cat("Mean:", mean(x), " SD:", round(sd(x), 2), "\n")

# Count occurrences of each value
print("Occurrences of each value:")
print(table(x))

# Count values falling in each interval
print("Counts per interval:")
print(table(cut(x, breaks = seq(20, 80, by = 10))))

# Counts relative to the mean
cat("Above 50:", sum(x > 50), " Equal to 50:", sum(x == 50),
    " Below 50:", sum(x < 50), "\n")
