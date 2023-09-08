lambda <- 1.6
# A
print ("A")

# P(X>5)
print(1 - ppois(5, lambda))

# B
print ("B")

lambda2 <- 1.6 * 8

# P(X<=8)
print(ppois(8, lambda2))
