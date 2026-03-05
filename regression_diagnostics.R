# Linear Regression and Model Diagnostics Example

# Simulate example dataset
set.seed(123)

n <- 100
x <- rnorm(n, 10, 3)
y <- 5 + 2*x + rnorm(n, 0, 5)

data <- data.frame(x, y)

# Fit linear regression model
model <- lm(y ~ x, data = data)

# Summary of model
summary(model)

# Diagnostic plots
par(mfrow = c(2,2))
plot(model)

# Residual analysis
residuals <- resid(model)
fitted_values <- fitted(model)

# Simple residual plot
plot(fitted_values, residuals,
     main = "Residuals vs Fitted",
     xlab = "Fitted values",
     ylab = "Residuals")

abline(h = 0, col = "red")
