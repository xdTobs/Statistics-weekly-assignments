D <- data.frame(
pressure = c(1.02, 2.08, 2.89, 4.01, 5.32, 5.83, 7.26, 7.96, 9.11, 9.99),
flux = c(1.15, 0.85, 1.56, 1.72, 4.32, 5.07, 5.00, 5.31, 6.17, 7.04)
)

#flux as function of pressure
fit <- lm(flux ~ pressure, data = D)
summary(fit)

multiple_r_squared <- 0.9289
corr <- sqrt(multiple_r_squared) * 1

#What is a 90% confidence interval for the slope β1 in the usual regression
#model?

est_B1 <- 0.7225
err_B1 <- 0.0706
n <- 10

conf_interval <- est_B1 + c(-1, 1) * qt(0.95, n - 2) * err_B1

#How large a part of the flux-variation (∑10
#i=1(yi − ¯y)2) is not explained by
#pressure differences?

#1 - multiple r squared

not_explained <- 1 - multiple_r_squared

exp_0_conf_interval <-
  predict(fit, newdata = data.frame(pressure = 0),
          interval = "confidence", level = 0.95)

#         fit       lwr      upr
# -0.1885744 -1.207164 0.830015

#0 is in interval, cannot reject

# p value for intecept = 0 is given in summary as
#0.681 which is greater than 0.05 so we cant reject



x_new <- c(3.5, 5, 9.5)

est_B0 <- -0.18857

res <- est_B0 + est_B1*x_new

#not correct, wtf are they asking


