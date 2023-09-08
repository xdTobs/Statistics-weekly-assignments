## 2.1
### a
dbinom applies binary distribution

dibinom(4,10,0.6)
applies to 4 successes in 10 trials with probability of success 0.6
so the result 0.1115 is the probability of exactly 4 successes

### c
dpois applies the poisson distribution
dpois(4,3)
applies 4 successes with a mean / lambda of 3
so the result 0.168 is the probability of exactly 4 successes

## 2.4
### Description
In a consumer survey performed by a newspaper, 20 different groceries (prod-
ucts) were purchased in a grocery store. Discrepancies between the price ap-
pearing on the sales slip and the shelf price were found in 6 of these purchased
products.

At the same time a customer buys 3 random (different) products within
the group consisting of the 20 goods in the store. The probability that no
discrepancies occurs for this customer is?

### Solution
We are using a hypergeometric distribution here, because we are sampling without replacement. 

We are looking for 0 sucesses in 3 trials, with 6 sucesses in 20 trials.

dhyper(0,6,14,3)
= 0.3192982
so there is a 31.9% chance that no discrepancies occur for this customer.

## 2.5
### Description
A horse owner receives 20 bales of hay in a sealed plastic packaging. To con-
trol the hay, 3 bales of hay are randomly selected, and each checked whether it
contains harmful fungal spores.
It is believed that among the 20 bales of hay 2 bales are infected with fungal
spores. A random variable X describes the number of infected bales of hay
among the three selected.

### Solution
We are using a hypergeometric distribution here, because we are sampling without replacement.

we are looking for a lot of values, so we will take them one by one in a list

- **Mean of X:** <p>
    We are looking for the mean of X, so we will use the mean function on the hypergeometric distribution.

    $mean=n*{a \over N}$
    
    $n=3$

    $a=2$

    $N=20$

    $mean=3*{2 \over 20}$

    $mean=0.3$
    </p>
- **Variance of X:** <p>
    We are looking for the variance of X, so we will use the var function on the hypergeometric distribution.

    $var={n*a*(N-a)*(N-n) \over N^2*(N-1)}$

    $n=3$

    $a=2$

    $N=20$

    $var={3*2*(20-2)*(20-3) \over 20^2*(20-1)}$

    $var=0.24157$
    </p>
- **SD of X:** <p>

    $sd=\sqrt{var}$

    $sd=\sqrt{0.24157}$

    $sd=0.4915$
    </p>
- **P(X>=1):** <p>
    









