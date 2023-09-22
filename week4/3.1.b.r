x <- c(3003,3005,2997,3006,2999,2998,3007,3005,3001)

mean <- mean(x)
var <- var(x)
sd <- sqrt(var)
n <- length(x)

alpha <- 0.05

meaninterval <- c(
  mean - qt(1 - alpha / 2, n - 1) * sd / sqrt(n),
  mean + qt(1 - alpha / 2, n - 1) * sd / sqrt(n)
)
print(meaninterval)


alpha <- 0.01

meaninterval <- c(
  mean - qt(1 - alpha / 2, n - 1) * sd / sqrt(n),
  mean + qt(1 - alpha / 2, n - 1) * sd / sqrt(n)
)

print(meaninterval)



#print(t.test(x))
