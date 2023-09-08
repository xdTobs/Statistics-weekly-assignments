# A
print("A")

sample <- 180
p <- 1 / 12

# P(X>=20) # nolint
print(1 - pbinom(19, sample, p))

# B
print("B")
# P(X>=v) # nolint
# 0.99=1-pbinom(v, sample, p) # nolint
res <- 0
v <- 0
while (res < 0.99){
    res <- pbinom(v, sample, p)
    v <- v + 1
}
print(v)
print(pbinom(v, sample, p))
#v is 25