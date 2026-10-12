# Program 2: Create labeled matrices (5x4, 3x3, 2x2) filled by row / column

# 5 x 4 matrix filled by row
m1 <- matrix(1:20, nrow = 5, ncol = 4, byrow = TRUE,
             dimnames = list(c("R1", "R2", "R3", "R4", "R5"),
                             c("C1", "C2", "C3", "C4")))
print("5 x 4 matrix filled by row:")
print(m1)

# 3 x 3 matrix filled by column
m2 <- matrix(1:9, nrow = 3, ncol = 3, byrow = FALSE,
             dimnames = list(c("Row1", "Row2", "Row3"),
                             c("Col1", "Col2", "Col3")))
print("3 x 3 matrix filled by column:")
print(m2)

# 2 x 2 matrix filled by row
m3 <- matrix(c(5, 10, 15, 20), nrow = 2, ncol = 2, byrow = TRUE,
             dimnames = list(c("a", "b"), c("x", "y")))
print("2 x 2 matrix filled by row:")
print(m3)

# 2 x 2 matrix filled by column
m4 <- matrix(c(5, 10, 15, 20), nrow = 2, ncol = 2, byrow = FALSE,
             dimnames = list(c("a", "b"), c("x", "y")))
print("2 x 2 matrix filled by column:")
print(m4)
