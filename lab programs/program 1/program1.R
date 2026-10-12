# Program 1: Create numeric, character and logical vectors and display type and content

num_vec  <- c(10.5, 25, 37.8, 42, 59)
char_vec <- c("R", "Statistics", "Programming", "Lab")
log_vec  <- c(TRUE, FALSE, TRUE, TRUE, FALSE)

# Numeric vector
print(num_vec)
typeof(num_vec)
class(num_vec)

# Character vector
print(char_vec)
typeof(char_vec)
class(char_vec)

# Logical vector
print(log_vec)
typeof(log_vec)
class(log_vec)

# Length of each vector
cat("Lengths -> numeric:", length(num_vec),
    " character:", length(char_vec),
    " logical:", length(log_vec), "\n")
