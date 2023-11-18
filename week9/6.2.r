D <- data.frame(
x1=c(0.58, 0.86, 0.29, 0.20, 0.56, 0.28, 0.08, 0.41, 0.22,
0.35, 0.59, 0.22, 0.26, 0.12, 0.65, 0.70, 0.30, 0.70,
0.39, 0.72, 0.45, 0.81, 0.04, 0.20, 0.95),
x2=c(0.71, 0.13, 0.79, 0.20, 0.56, 0.92, 0.01, 0.60, 0.70,
0.73, 0.13, 0.96, 0.27, 0.21, 0.88, 0.30, 0.15, 0.09,
0.17, 0.25, 0.30, 0.32, 0.82, 0.98, 0.00),
y=c(1.45, 1.93, 0.81, 0.61, 1.55, 0.95, 0.45, 1.14, 0.74,
0.98, 1.41, 0.81, 0.89, 0.68, 1.39, 1.53, 0.91, 1.49,
1.38, 1.73, 1.11, 1.68, 0.66, 0.69, 1.98)
)

fit <- lm(y ~ x1 + x2, data = D)
summary(fit)

confint(fit)

n <- length(d$y)
df <- n - 3

sd0 <- 0.065983
sd1 <- 0.095245
sd2 <- 0.074854

conf_interval1 <- fit$coefficients[1] + c(-1, 1) * qt(0.975, df) * sd0
#[1] -0.003483011  0.870577242
conf_interval2 <- fit$coefficients[2] + c(-1, 1) * qt(0.975, df) * sd1
#[1] 1.531463 1.774524
conf_interval3 <- fit$coefficients[3] + c(-1, 1) * qt(0.975, df) * sd2
#[1] -0.1335037  0.1413935

fit2 <- lm(y ~ x1, data = D)
summary(fit2)
#fit3 <- lm(y ~ x2, data = D)
#summary(fit3)
#disregard fit3 it is bad, yucky, sucks

# Residual analysis for fit2
par(mfrow=c(2,2))
plot(fit2)
#looks about right, maybe the QQ residuals arent quite normal, but close enough

#there are no strong evidence against the assumptions, the qq-plot is are a straight
#line and the are no obvious dependence between the residuals and the fitted values,
#and we conclude that the assumptions are fulfilled.

x1new <- seq(0,1,by=0.01)

pred <- predict(fit2, newdata = data.frame(x1 = x1new),
                interval = "prediction", level = 0.95)

conf <- predict(fit2, newdata = data.frame(x1 = x1new),
                interval = "confidence", level = 0.95)

plot(x1new, pred[ ,"fit"], type="l", ylim=c(0.1,2.4),
    xlab="x1", ylab="Prediction")


lines(x1new, conf[ ,"lwr"], col="green", lty=2)
lines(x1new, conf[ ,"upr"], col="green", lty=2)
lines(x1new, pred[ ,"lwr"], col="red", lty=2)
lines(x1new, pred[ ,"upr"], col="red", lty=2)

legend("topleft", c("Prediction","Confidence band","Prediction band"),
      lty=c(1,2,2), col=c(1,3,2), cex=0.7)
