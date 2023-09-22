x <- c(3003,3005,2997,3006,2999,2998,3007,3005,3001)

mean <- mean(x)
var <- var(x)
sd <- sqrt(var)
n <- length(x)

alpha <- 0.05

varinterval <- c(
  ((n - 1) * (sd * sd)) / (qchisq(1 - alpha / 2, n - 1)),
  ((n - 1) * (sd * sd)) / (qchisq(alpha / 2, n - 1))
)


print(varinterval)

print(sqrt(varinterval))

alpha <- 0.01

varinterval <- c(
  ((n - 1) * (sd * sd)) / (qchisq(1 - alpha / 2, n - 1)),
  ((n - 1) * (sd * sd)) / (qchisq(alpha / 2, n - 1))
)

print(varinterval)

print(sqrt(varinterval))
