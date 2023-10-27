k <- 100000
xA <- rexp(k,1/2)
xB <- rexp(k,1/3)
xC <- rexp(k,1/5)


x <- cbind(xA,xB,xC)
lifetimes <- apply(x,1,min)

#mean
mean(lifetimes)

#sd
sd(lifetimes)

#probability <1 month
sum(lifetimes<=1)/length(lifetimes)
#median
median(lifetimes)

#10th quantile
quantile(lifetimes,0.1)

#distribution of lifetimes seems to be exponential
hist(lifetimes)
