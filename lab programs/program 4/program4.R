# Program 4: Create arrays from vectors with dimension names and print specific elements

v1 <- c(1, 3, 5, 7)
v2 <- c(2, 4, 6, 8, 10, 12, 14, 16)

row_names    <- c("Row1", "Row2", "Row3")
col_names    <- c("Col1", "Col2", "Col3", "Col4")
matrix_names <- c("Matrix1", "Matrix2")

arr <- array(c(v1, v2), dim = c(3, 4, 2),
             dimnames = list(row_names, col_names, matrix_names))
print(arr)

# Specific elements
print("Element at Row2, Col3 of Matrix1:")
print(arr["Row2", "Col3", "Matrix1"])

print("Third row of Matrix2:")
print(arr[3, , 2])

print("Column 'Col4' of Matrix1:")
print(arr[, "Col4", "Matrix1"])

print("Full Matrix2:")
print(arr[, , "Matrix2"])
