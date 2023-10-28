# Create the x and y vectors
x <- c(0, 25, 50, 75, 100)
y <- c(14, 38, 54, 76, 95)

# y is result of x
fit <- lm(y ~ x)

summary(fit)

0.8 + c(-1, 1) * qt(0.975,3) * 0.024
# [0.7236213, 0.8763787]

# significant relationship can be documented

#p value for the null hypothesis is 0.0000627
#so we reject the null hypothesis

predict(fit, newdata=data.frame(x=80), interval="confidence",level=0.95)

est_B0 <- 15.4
est_B1 <- 0.8
n <- 5
standard_error <- 1.932

#sum of squared differences
Sxx <- (n-1)*sd(x)^2

prediction_interval <-
  (est_B0 + 80 * est_B1) + c(-1, 1) * qt(0.975, n-2) * standard_error *
  sqrt((1 / n) + ((80 - mean(x))^2) / Sxx)

#upper quantile of residuals:
residuals <- c(-1.4, 2.6, -1.4, 0.6, -0.4)

Q3 <- residuals[ceiling(length(residuals) * 0.75)]
#0.6



