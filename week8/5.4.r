# initialize the columns
x <- c(15, 25, 35, 40)
y <- c(42.1, 36.0, 31.8, 28.7)

#y as function of x
fit <- lm(y ~ x)
summary(fit)

#95% conf interval for slope

est_B1 <- -0.52136
standard_error <- 0.02898
n <- 4
df <- 2

conf_interval <- est_B1 + c(-1, 1) * qt(0.975, df) * standard_error
# -0.6460509 -0.3966691

#Can you conclude that there is a relation between the impact strength and
#the cooling time at significance level α = 5%?

#yes since 0 is not part of the 95% confidence interval
#and p value for the null hypothesis is 0.003

#with the usual t-test statistic for such a test, what is the range (for t) 
#within which the hypothesis is accepted?

#Should be read as find the values for t that accept the hypothesis
#meaning find critical values


c(-1, 1) * qt(0.975, 2)
# [-4.302653, 4.302653]


