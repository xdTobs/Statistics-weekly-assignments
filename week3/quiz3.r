#p(x<600)=0.01
#p(x>650)=0.05

mean <- 1
sd <- 1

print(qnorm(0.01))
print(qnorm(0.95))

mean <- 43.5
sd <- 2.6726

print(qnorm(0.99, mean = mean, sd = sd))

print(1 - pnorm(48,mean,sd))



