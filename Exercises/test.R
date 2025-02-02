x <- c(0:10, 50)
xm <- mean(x, na.rm=FALSE)
c(xm, mean(x, trim = 0.10))
print(xm)

#complex numbers exnample
# Define grid of complex numbers
x <- seq(-2, 1, length.out = 5)
y <- seq(-1.5, 1.5, length.out = 5)
grid <- expand.grid(x = x, y = y)
complex_grid <- complex(real = grid$x, imaginary = grid$y)
print(complex_grid)

library(ggplot2)

# Define vector coordinates
x_start <- 0
y_start <- 0
x_end <- 3
y_end <- 4

# Plot the vector
ggplot() +
  geom_segment(aes(x = x_start, y = y_start, xend = x_end, yend = y_end),
               arrow = arrow(length = unit(0.3, "cm")), color = "blue") +
  xlim(0, 5) + ylim(0, 5) +
  labs(title = "2D Vector (3, 4)", x = "X-axis", y = "Y-axis") +
  theme_minimal()

# Create a numeric vector
vec <- c(3, 5, 2, 8, 4)

# Bar plot
barplot(vec, names.arg = c("A", "B", "C", "D", "E"),
        col = "skyblue", main = "Bar Plot of a Numeric Vector",
        xlab = "Category", ylab = "Value")