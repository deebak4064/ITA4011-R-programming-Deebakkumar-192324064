# Program 3: Create and display a 3D array with specified rows, columns and tables

rows   <- 3
cols   <- 4
tables <- 2

arr <- array(1:(rows * cols * tables), dim = c(rows, cols, tables))

print("3D array:")
print(arr)

cat("Dimensions (rows, columns, tables):", dim(arr), "\n")
cat("Total elements:", length(arr), "\n")

# Access a single table
print("Table 2:")
print(arr[, , 2])
