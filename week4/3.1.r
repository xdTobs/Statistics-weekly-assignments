x <- c(3003,3005,2997,3006,2999,2998,3007,3005,3001)

mean <- mean(x)

sd <- sd(x)

sderr <- sd / sqrt(length(x))

print(mean)
print(sd)
print(sderr)
#3002.33
#3.708099
#1.236033

mean <- 3000
sd <- 3
var <- 9

totalmean <- 15000
totalvar <- 45
totalsd <- sqrt(45)

print(2 * (1 - pnorm(totalmean + 10, totalmean, totalsd)))
## 0.1360371
# 13.6 percent are going to be too far away from the mean

print(totalmean - qnorm(1 - (95 / 2)))