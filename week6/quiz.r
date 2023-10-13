max <- c(2.62,2.71,2.18,2.25,2.72,2.34,2.63,1.86,2.84,2.93)
min <- c(2.14,2.39,1.86,1.92,2.33,2.00,2.25,1.50,2.27,2.37)

print(t.test(max,min, paired = TRUE, mu = 0.35, conf.level = 0.99))

mean1 <- 122.4

var1 <- 30.5^2

n1 <- 15

mean2 <- 145.9

var2 <- 22.3^2

n2 <- 10
delta0 <- 0

tobs <- ((mean1 - mean2) - delta0) / (sqrt((var1 / n1) + (var2 / n2)))
print(tobs)

df <- (((var1/n1)+(var2/n2))^2)/(((var1/n1)^2/(n1-1))+(((var2/n2)^2)/(n2-1)))
print(df)
print(2*pt(tobs,df))