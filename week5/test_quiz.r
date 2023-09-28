x <- c(44.9,44.2,44.6,44.8,44.0,45.1)
print(t.test(x,mu = 45))

lambda <- 1/4

print(dbinom(6,20,1/4))

x <- c(2,2,4,4,4,4,4,7,7,7,7,7,7,7,10,10,10,10,10,12,12)



print(var(x))

smean <- 1.363

s <- 1.521

n <- 48

H0 <- 0

tobs <- (smean - H0)/(s/sqrt(n))

print(tobs)

print(qt(0.975,n-1))
pvalue <- 2 * (1-pt(abs(tobs), df=n-1))
print(pvalue)

sd <- c(sqrt((n-1)*s*s)/qchisq(0.995,n-1),sqrt((n-1)*s*s)/qchisq(0.05,n-1))

print(sd)


mean <- 1.363
sd <- 1.521
n <- 48

alpha <- 0.05

varinterval <- c(
  ((n - 1) * (sd * sd)) / (qchisq(1 - alpha / 2, n - 1)),
  ((n - 1) * (sd * sd)) / (qchisq(alpha / 2, n - 1))
)
print(sqrt(varinterval))