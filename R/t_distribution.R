# Generate a vector of 100 values between -4 and 4
x <- seq(-4,4, length = 100)

# Simulate the t-distribution
y_1 <- dt(x, df = 4)
y_2 <- dt(x, df = 6)
y_3 <- dt(x, df = 8)
y_4 <- dt(x, df = 10)
y_5 <- dt(x, df = 12)

# Plot the t-distributions
plot(x, y_1, type = "l", lwd = 2, xlab = "t-value", ylab = "Density",
     main = "Comparison of t-distributions", col = "black")
lines(x, y_2, col = "red")
lines(x, y_3, col = "orange")
lines(x, y_4, col = "green")
lines(x, y_5, col = "blue")

# Add a legend
legend("topright", c("df = 4", "df = 6", "df = 8", "df = 10", "df = 12"),
       col = c("black", "red", "orange", "green", "blue"),
       title = "t-distributions", lty = 1)
