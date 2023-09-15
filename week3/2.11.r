#Calculate the difference as a normal distribution
mean <- 65-54;
var <- 16+12;
sd <- sqrt(var);
print(pnorm(10, mean = mean, sd = sd));
#The chance is 42.5% that the time saved is less than 10ms

#Calculate mean and sd for 100 chips on new machine
mean <- 54*100;
var <- 12*100;
sd <- sqrt(var);
#print mean and sd
print(mean);
print(sd);
#The mean is 5400ms and the sd is 34.6ms