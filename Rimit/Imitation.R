library(moments)
p = function() {
	hist(x)
	cat("N =", length(x),
  ",", round(mean(x), 2),
  ",", round(sd(x), 2),
  ",", round(skewness(x), 2),
  ",", round(kurtosis(x), 2), "\n")
}

x = rnorm(4000, 73, 16)
p() ########

### cut the tails
x[x > 100] = 100
LEFT = 50
x = x[!(x < LEFT)] # 0.2%
x[LEFT < x & x < 60] <- 60
p() ########


### round to nearest step

x[95 < x & x < 100] <- 100
x[85 < x & x < 90] <- 90
x[70 < x & x < 75] <- 75
p() ########


### skewness: low-down, low-up, high-down, high-up, middle-down, middle-up

m = mean(x)
#x[x < m] <- x[x < m] * 1.1   # low-up
#x[x < m] <- x[x < m] / 1.1   # low-down



p() #######
