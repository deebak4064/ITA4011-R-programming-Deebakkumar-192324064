# Program 13: Combine multiple arrays row-wise

a1 <- array(1:6, dim = c(2, 3))
a2 <- array(7:12, dim = c(2, 3))
a3 <- array(13:15, dim = c(1, 3))

print("Array 1:"); print(a1)
print("Array 2:"); print(a2)
print("Array 3:"); print(a3)

combined <- rbind(a1, a2, a3)
rownames(combined) <- paste0("Row", 1:nrow(combined))
colnames(combined) <- c("A", "B", "C")

print("Arrays combined row-wise:")
print(combined)
dim(combined)
