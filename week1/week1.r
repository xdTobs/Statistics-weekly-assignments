#x <- c(2474,2547,2830,3219,3429,3448,3677,3872,4001,4116)
x <- c(2844,2863,2963,3239,3379,3449,3582,3926,4151,4356)
mean <- sum(x) / length(x)
print(mean)
print(mean(x))
sum =0
for (var in x){
    sum <- sum + (as.numeric(var) - as.numeric(mean))^2
}
variance <- sum / (length(x) - 1)
print(variance)
print(var(x))
sd <- sqrt(variance)
print(sd)
print(sd(x))

q1 <- 0.25 * (length(x))
q3 <- 0.75 * (length(x))
print(x[ceiling(q1)])
print(x[ceiling(q3)])
min <- min(x)
if(min < (x[ceiling(q1)] - 1.5 * (x[ceiling(q3)] - x[ceiling(q1)]))){
    print("outlier")
}
max <- max(x)
if(max > (x[ceiling(q3)] + 1.5 * (x[ceiling(q3)] - x[ceiling(q1)]))){
    print("outlier")
}
print(min(x))
print(max(x))

print (sd(x) / mean(x))



