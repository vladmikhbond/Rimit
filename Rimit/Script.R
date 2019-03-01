library(moments)
p = function() {
	cat("N =", length(x),
  ",", round(mean(x), 2),
  ",", round(sd(x), 2),
  ",", round(skewness(x), 2),
  ",", round(kurtosis(x), 2), "\n")
}

x = rnorm(4000, 73, 14)

### cut the tails
x[x > 100] = 100
LEFT = 50
x = x[!(x < LEFT)] # 0.2%
x[LEFT < x & x < 60] <- 60


### round to nearest step

x[90 < x & x < 100] <- 100
x[80 < x & x < 90] <- 90
x[70 < x & x < 75] <- 75


### skewness: low-down, low-up, high-down, high-up, middle-down, middle-up

m = mean(x)
#x[x < m] <- x[x < m] * 1.1   # low-up
#x[x < m] <- x[x < m] / 1.1   # low-down


hist(x, 8)
p()
