x <- c(3003, 3005, 2997, 3006, 2999, 2998, 3007, 3005, 3001)

print(t.test(x, conf.level = 0.99))
#2998.186 3006.481

# there is a 99% chance that the true mean is between 2998.186 and 3006.481
print(qt(p=0.995, df=8))


print(t.test(x, conf.level = 0.95))
# 2999.483 3005.184


print(qt(p=0.975, df=8))



qqnorm(x)
qqline(x)
