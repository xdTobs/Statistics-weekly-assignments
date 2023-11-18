p1 <- 4/500
p2 <- 8/700

n1 <- 500
n2 <- 700


est_p <- (4 + 8) / (500 + 700)

zobs <- (p1 - p2) / sqrt(est_p * (1 - est_p) * (1/n1 + 1/n2))

p_value <- 2 * pnorm(-abs(zobs))



exp11 <- ((0.072 + 0.28 + 0.088) * 250) * ((0.072 + 0.052 + 0.012) * 250) / 250

qchisq(0.99,(3-1)*(3-1))


n <- 20 + 125 + 55
x <- 55

p <- x / n

conf_interval <- p + c(-1,1) * qnorm(0.975) * sqrt(p * (1 - p) / n)

# two sample hypothesis test

n1 <- 50
n2 <- 150

x1 <- 8
x2 <- 55-8

p1 <- x1 / n1
p2 <- x2 / n2

p_est <- (x1 + x2) / (n1 + n2)

zobs <- (p1 - p2) / sqrt(p_est * (1 - p_est) * (1/n1 + 1/n2))

p_value <- 2 * pnorm(-abs(zobs))

# two sample hypothesis test

p1 <- 0.51
p2 <- 0.68

n1 <- 100
n2 <- 100

p_est <- (p1 * n1 + p2 * n2) / (n1 + n2)

zobs <- (p1 - p2) / sqrt(p_est * (1 - p_est) * (1/n1 + 1/n2))

p_value <- 2 * pnorm(-abs(zobs))

# two sample hypothesis test

# Given values
x1 <- 5.97
x2 <- 8.25
s1 <- sqrt(23)
s2 <- sqrt(21)

n1 <- 51
n2 <- 68

delta <- x1 - x2

tobs <- (x1 - x2) / sqrt(s1^2 / n1 + s2^2 / n2)

df <- (s1^2/n1 + s2^2/n2)^2 /
  (s1^4 / (n1^2 * (n1 - 1)) + s2^4 / (n2^2 * (n2 - 1)))


p_value = 2 * pt(-abs(tobs), df = n1 + n2 - 2)

mean <- 437

sd <- 117

n <- 712

ninetyfivepercentobservations <- mean + c(-1, 1) * qt(0.975, n - 1) * sd

qt(0.975, n - 1)