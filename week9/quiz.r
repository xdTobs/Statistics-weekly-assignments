
x <- c(143, 134, 138, 138, 135, 131, 135, 139, 141, 143, 142, 141, 149, 140)
n <- length(x)
conf_interval <- mean(x) + c(-1, 1) * qt(0.975, n - 1) * sd(x) / sqrt(n)
conf_interval = t.test(x,conf.level = 0.95)

