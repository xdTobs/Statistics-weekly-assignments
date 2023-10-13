Pulse_end <- c(173,175,174,183,181,180,170,182,188,
178,181,183,185)
Pulse_1min <- c(120,115,122,123,125,140,108,133,134,
121,130,126,128)

print(t.test(Pulse_end,Pulse_1min, conf.level = 0.99))

n <- length(Pulse_end)
sd <- sd(Pulse_end)
alpha <- 0.05
varinterval <- c(
  ((n - 1) * (sd * sd)) / (qchisq(1 - alpha / 2, n - 1)),
  ((n - 1) * (sd * sd)) / (qchisq(alpha / 2, n - 1))
)
print(sqrt(varinterval))

max <- c(2.62,2.71,2.18,2.25,2.72,2.34,2.63,1.86,2.84,2.93)
min <- c(2.14,2.39,1.86,1.92,2.33,2.00,2.25,1.50,2.27,2.37)

print(t.test(max,min, paired = TRUE, mu = 0.35))

mean1 <- 6.42
mean2 <- 7.375

n1 <- 50
n2 <- 24

var1 <- 2.205^2
var2 <- 1.813^2

delta0 <- 0

ms <- c(6.42, 7.375)
vs <- c(2.205^2, 1.813^2)
ns <- c(50, 24)

tobs <- ((mean1 - mean2) - delta0) / (sqrt((var1 / n1) + (var2 / n2)))
print(tobs)
tobs <- ((ms[1] - ms[2]) - delta0) / (sqrt((vs[1] / ns[1]) + (vs[2] / ns[2])))
print(tobs)

df <- (((var1/n1)+(var2/n2))^2)/(((var1/n1)^2/(n1-1))+(((var2/n2)^2)/(n2-1)))
print(df)
print(2*pt(tobs,df))
#p> 0.05 so we cannot reject

#mean of difference
alpha <- 0.01

meaninterval <- c(
  (mean1 - mean2) - qt(1 - alpha / 2, df) * sqrt((var1 / n1) + (var2 / n2)),
  (mean1 - mean2) + qt(1 - alpha / 2, df) * sqrt((var1 / n1) + (var2 / n2))
)

print("mean")
print(meaninterval)

# sd interval after project
alpha = 0.05
n <- 24
sd <- sqrt(var2)

varinterval <- c(
  ((n - 1) * (sd * sd)) / (qchisq(1 - alpha / 2, n - 1)),
  ((n - 1) * (sd * sd)) / (qchisq(alpha / 2, n - 1))
)
print(sqrt(varinterval))
