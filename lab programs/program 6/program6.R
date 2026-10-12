# Program 6: Create a list containing vectors, matrices and functions; display contents

my_list <- list(
  numbers  = c(10, 20, 30, 40),
  names    = c("Asha", "Ravi", "Meena"),
  mat      = matrix(1:6, nrow = 2, byrow = TRUE),
  square   = function(x) x^2,
  is_valid = TRUE
)

print(my_list)

print("Structure of the list:")
str(my_list)

print("Accessing elements:")
print(my_list$numbers)
print(my_list[["mat"]])
print(my_list$square(7))   # calling the function stored in the list

names(my_list)
length(my_list)
