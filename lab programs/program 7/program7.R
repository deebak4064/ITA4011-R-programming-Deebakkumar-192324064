# Program 7: Basic tasks - factors of a number, random integers, FizzBuzz

# a) Factors of a number
print_factors <- function(n) {
  cat("Factors of", n, "are:", which(n %% 1:n == 0), "\n")
}
print_factors(36)
print_factors(97)

# b) Vector of 10 random integers between -50 and 50
set.seed(7)
rand_vec <- sample(-50:50, 10, replace = TRUE)
print(rand_vec)

# c) Numbers 1 to 100 with FizzBuzz logic
fizzbuzz <- character(100)
for (i in 1:100) {
  if (i %% 15 == 0) {
    fizzbuzz[i] <- "FizzBuzz"
  } else if (i %% 3 == 0) {
    fizzbuzz[i] <- "Fizz"
  } else if (i %% 5 == 0) {
    fizzbuzz[i] <- "Buzz"
  } else {
    fizzbuzz[i] <- as.character(i)
  }
}
print(fizzbuzz, quote = FALSE)
