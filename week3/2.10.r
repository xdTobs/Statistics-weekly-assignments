#Let X be normally distributed with mean 24 and variance 16
#Calculate the following probabilities:
#1. P(X ≤ 20)
#2. P(X > 29.5)
#3. P(X = 23.8)

print(pnorm(20, mean = 24, sd = 4))

print(1 - pnorm(29.5, mean = 24, sd = 4))

print(pnorm(23.8, mean = 24, sd = 4) - pnorm(23.8, mean = 24, sd = 4))

