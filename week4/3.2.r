mean <- 180.1
sd <- 0.0959
n <- 16

alpha <- 0.10

meaninterval <- c(
  mean - qt(1 - alpha / 2, n - 1) * sd / sqrt(n),
  mean + qt(1 - alpha / 2, n - 1) * sd / sqrt(n)
)
print(meaninterval)

alpha <- 0.01

varinterval <- c(
  ((n - 1) * (sd * sd)) / (qchisq(1 - alpha / 2, n - 1)),
  ((n - 1) * (sd * sd)) / (qchisq(alpha / 2, n - 1))
)
print(sqrt(varinterval))
