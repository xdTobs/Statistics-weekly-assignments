#varinterval <- c(
#  ((n - 1) * (sd * sd)) / (qchisq(1 - alpha / 2, n - 1)),
#  ((n - 1) * (sd * sd)) / (qchisq(alpha / 2, n - 1))
#)
n <- 14
alpha <- 0.05
qchisq(1 - alpha / 2, n - 1)
qchisq(alpha / 2, n - 1)