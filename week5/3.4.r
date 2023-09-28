x <- c(180.02, 180.00, 180.01, 179.97, 179.92, 180.05, 179.94, 180.10, 180.24, 180.12, 180.13, 180.22, 179.96, 180.10, 179.96, 180.06)

H0 <- 180

print(t.test(x, mu = H0, conf.level = 0.95))
#p-value = 0.5456

# 95% confidence interval:
# 179.9989 180.1011

# H0 is not rejected


print(t.test(x, mu = H0, conf.level = 0.99))
print(qt(p=0.995, df=length(x)-1))
#p-value = 0.5456
# 99% confidence interval:
# 179.9793 180.1207