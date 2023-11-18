n1 <- 108
n2 <- 143

p1 <- 82 / 108
p2 <- 104 / 143

conf_interval <- (p1 - p2) + c(-1, 1) * qnorm(0.975) *
  sqrt(p1 * (1 - p1) / n1 + p2 * (1 - p2) / n2)

data <- matrix(c(82, 104, 26, 39), ncol = 2, byrow = TRUE)
rownames(data) <- c("Pass", "Fail")
colnames(data) <- c("Group 1", "Group 2")
chisq.test(data, correct = FALSE)
#p-value is 0.5668 meaning no significance,
#cannot reject that the two groups are the same

qchisq(0.99, 1)


# 7.3
# mean = n*p
mean <- 250 * 0.2
# sd = sqrt(n*p*(1-p))
sd <- sqrt(250 * 0.2 * 0.8)

data <- matrix(c(7.2, 6.4, 28, 34.8, 8.8, 14.8), ncol = 2, byrow = TRUE)
rownames(data) <- c("Copper", "Painted", "Stainless Steel")
colnames(data) <- c("Denmark", "Export")
data
chisq.test(data, correct = FALSE)
# p-value is 0.6436 so no significance, all groups are the same


p0 <- 0.5 # H0: p = 0.5, meaining equal distribution between local and export
x <- 110 # number of exports
n <- 250 # total number of samples

zobs <- (x - n * p0) / sqrt(n * p0 * (1 - p0))
# -1.897367, less than -1.96, so reject H0


# (r − 1)(c − 1) deg of freedom, meaning (3-1)(2-1) = 2
qchisq(0.95, 2)

# 7.3
p0 <- 0.295 # H0: p = 0.295, meaning 29.5% voted A
x <- 168 # number of votes for A
n <- 740 # total number of votes

zobs <- (x - n * p0) / sqrt(n * p0 * (1 - p0))
# -4.054586, test against critical value of:
alpha <- 0.001
zcrit <- qnorm(1 - alpha / 2)
#3.290527
# -4.054586 < -3.290527, so reject H0



est_p <- x / n

conf_interval <- est_p + c(-1, 1) * qnorm(0.975) * sqrt(est_p * (1 - est_p) / n)

# 0.1968447 0.2572094

#7.4

# method 7.18
x1 <- 6
x2 <- 12
n1 <- 50
n2 <- 50

p1 <- x1 / n1

p2 <- x2 / n2

est_p <- (x1 + x2) / (n1 + n2)

zobs <- (p1 - p2) / sqrt(est_p * (1 - est_p) * (1 / n1 + 1 / n2))
#crit value is -1.561738, meaning we cannot reject H0 at alpha = 0.05

x <- 36
n <- 200
est_p <- x / n
conf_interval <- est_p + c(-1, 1) * qnorm(0.995) * sqrt(est_p * (1 - est_p) / n)
# 0.1100246 0.2499754

data <- matrix(c(11, 27, 15, 14, 40, 30, 5, 23, 35), ncol = 3, byrow = TRUE)
rownames(data) <- c("Bad", "Average", "Good")
colnames(data) <- c("Below", "Average", "Above")
data

exp33 <- (15 + 30 + 35) * (5 + 23 + 35) / 200
# 25.2


#there are 9 cells so 9 contributions to the chi-squared statistic
#the contribution for cell 11 is
exp11 <- (11 + 14 + 5) * (11 + 27 + 15) / 200

contribution11 <- (11 - exp11)^2 / exp11
# 1.170126

chisq.test(data, correct = FALSE)

#p-value is 0.02673
#so significant at alpha = 0.05, meaning that phyiscal condition has an
#effect on job performance