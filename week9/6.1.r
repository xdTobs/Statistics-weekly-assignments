
B0 <- 2.36500 
B1 <- 0.47621 
B2 <- 0.08269

sd0 <- 0.22184
sd1 <- 0.06169
sd2 <- 0.06977



n <- 239
df <- 237

conf_interval1 <- B0 + c(-1, 1) * qt(0.975, df) * sd0
#[1] 1.92797 2.80203
conf_interval2 <- B1 + c(-1, 1) * qt(0.975, df) * sd1
#[1] 0.3546792 0.5977408
conf_interval3 <- B2 + c(-1, 1) * qt(0.975, df) * sd2
#[1] -0.05475858  0.22013858

H0 <- 0

tobs0 <- (B0 - H0)/(sd0^2/sqrt(n))
tobs1 <- (B1 - H0)/(sd1^2/sqrt(n))
tobs2 <- (B2 - H0)/(sd2^2/sqrt(n))

pvalue0 <- 2 * (1-pt(abs(tobs0), df=n-1))
pvalue1 <- 2 * (1-pt(abs(tobs1), df=n-1))
pvalue2 <- 2 * (1-pt(abs(tobs2), df=n-1))