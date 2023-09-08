X <- 0.6
samples <- 10

# B

# P(X<=5)
print(pbinom(5,samples,X))

# P(X<5)
print(pbinom(4,samples,X))

# P(X>5)
print(1-pbinom(5,samples,X))

# P(X=5)
print(dbinom(5,samples,X))

# D
print("D")
lambda <- 3

# P(X<=5)
print(ppois(5,lambda))

# P(X<5)
print(ppois(4,lambda))

# P(X>4)
print(1-ppois(4,lambda))

# P(X=5)
print(dpois(5,lambda))