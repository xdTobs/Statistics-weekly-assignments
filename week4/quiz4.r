x <- c(143, 144, 141, 135, 153, 152, 159)
x <- sort(x)
quantile <- ceiling(length(x) * 0.75)

print(x[quantile])

n <- 6115
chance <- 38100 / 73380


