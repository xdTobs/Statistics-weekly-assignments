# 1
p <- 0.004
sample <- 200
sucess <- 2
# P(X>=2) # nolint
print(pbinom(2, sample, p))

# 2
print("2")
M1 <- c(82.5,83.7,80.9,95.2,80.8)
print(sum(M1))
print(mean(M1))
print(0.75*length(M1))

# 3
print("3")

# P(X=0) =0.3 #nolint
print(ppois(0,1.2))
lambda <- 1.2 * 4

# P(X>=8) # nolint
print(1 - ppois(7, lambda))

# 4
print("4")
N <- 9
a <- 2
n <- 3

# mean of X
print(n * (a /N))

# variance of X
var <- (n*a*(N-a)*(N-n))/((N*N*(N-1)))
print(var)

# 5
print("5")
N <- 9
a <- 4
n <- 3

print(dhyper(3, a, N-a, n))

# 6
print("6")
#P(x=0) = 0.05 #nolint
#-log(0.05) = 3#nolint
lambda <- 3
#P(X>5) #nolint
print(1-ppois(5,lambda))


