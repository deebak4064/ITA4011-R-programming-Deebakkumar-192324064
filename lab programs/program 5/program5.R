# Program 5: Create and manipulate factor variables

# a) Factor from the heights in the built-in 'women' dataset
print(women$height)
height_f <- factor(women$height)
print(height_f)
levels(height_f)
nlevels(height_f)
is.factor(height_f)

# Group heights into categories
height_cat <- cut(women$height, breaks = c(57, 62, 67, 72),
                  labels = c("Short", "Medium", "Tall"))
print(height_cat)
print(table(height_cat))

# b) Factor from a random sample of LETTERS
set.seed(42)
letters_sample <- sample(LETTERS[1:5], 20, replace = TRUE)
print(letters_sample)
letter_f <- factor(letters_sample)
print(letter_f)
levels(letter_f)
print(table(letter_f))

# Rename levels and reorder
levels(letter_f) <- c("Alpha", "Bravo", "Charlie", "Delta", "Echo")
print(letter_f)
letter_f <- factor(letter_f, levels = rev(levels(letter_f)))
levels(letter_f)
