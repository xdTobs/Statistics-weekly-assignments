# initialize columns
distance <- c(2, 4, 6, 8, 10)
avg_concentration <- c(11.5, 10.2, 10.3, 9.68, 9.32)

# avg_concentration is function of distance
fit <- lm(avg_concentration ~ distance)
summary(fit)

#Find B0, B1, standard_error

est_B0 <- 11.664
est_B1 <- -0.244
standard_error <- 0.348

#How large a part of the variation in concentration can be explained by the
#distance?

#Read multiple R squared from summary:
#0.8676

#87% of the variation in concentration can be explained by the distance


exp_7k_conf_interval <-
  predict(fit, newdata = data.frame(distance = 7),
          interval = "confidence", level = 0.95)

# fit      lwr      upr
# 9.956 9.430636 10.48136


est_B0 <- 11.664
est_B1 <- -0.244
standard_error <- 0.348
n <- 5
test_value <- 7

#sum of squared differences
Sxx <- (n - 1) * sd(distance)^2

prediction_interval <-
  (est_B0 + test_value * est_B1) +
  c(-1, 1) * qt(0.975, n - 2) * standard_error *
  sqrt((1 / n) + ((test_value - mean(distance))^2) / Sxx)
