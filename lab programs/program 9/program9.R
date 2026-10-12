# Program 9: Create empty plots with specified axis limits

# Empty plot with x from 0 to 100 and y from 0 to 50
plot(NULL, xlim = c(0, 100), ylim = c(0, 50),
     xlab = "X axis", ylab = "Y axis",
     main = "Empty Plot (x: 0-100, y: 0-50)")

# Empty plot without axes, then custom axes and a box
plot(1, type = "n", xlim = c(-10, 10), ylim = c(-5, 5),
     axes = FALSE, xlab = "", ylab = "",
     main = "Empty Plot with Custom Axes (x: -10 to 10, y: -5 to 5)")
axis(1, at = seq(-10, 10, 2))
axis(2, at = seq(-5, 5, 1))
box()
abline(h = 0, v = 0, lty = 2, col = "grey")
