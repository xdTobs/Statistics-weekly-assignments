before <- c(9.1,8.0,7.7,10.0,9.6,7.9,9.0,7.1,8.3,9.6,8.2,9.2,7.3,8.5,9.5)
after <- c(8.2,6.4,6.6,8.5,8.0,5.8,7.8,7.2,6.7,9.8,7.1,7.7,6.0,6.6,8.4)
#median
print(before[ceiling(0.5*(length(before)))])
print(after[ceiling(0.5*(length(after)))])
#sd

standardDeviation <- function(x){
mean_x = sum(x) / length(x)
sum <- sum((x-mean_x)^2)
variance <- sum / (length(x) - 1)
sd <- sqrt(variance)
return(sd)
}
sampleCovariance <- function(x,y){
mean_x = sum(x) / length(x)
mean_y = sum(y) / length(y)
sum <- sum((x-mean_x)*(y-mean_y))
covariance <- sum / (length(x) - 1)
return(covariance)
}

print(standardDeviation(before))
print(sd(before))

print (standardDeviation(after))
print(sd(after))

#covariance
print(sampleCovariance(before,after))
print(cov(before,after))

#correlation
print(sampleCovariance(before,after) / (standardDeviation(before) * standardDeviation(after)))
print(cor(before,after))

diff <- before - after

#median
print(diff[ceiling(0.5*(length(diff)))])
#sd
print(standardDeviation(diff))
print(sd(diff))
#boxplot of values normalized to 0-1
boxplot(before/mean(before),after/mean(after),diff/mean(diff))
