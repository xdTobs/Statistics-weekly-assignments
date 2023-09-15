lambda_year <- 110000

lambda_day <- lambda_year / 365

lambda_hour <- lambda_day / 24

lambda_minute <- lambda_hour / 60

print(dpois(0, lambda = lambda_hour/2))

print(1- pexp(15, rate = lambda_minute))
