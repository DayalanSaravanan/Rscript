#!/usr/bin/env Rscript
# File: correlation.R
# Name: D.Saravanan
# Date: 31/10/2020
# Script to calculate the correlation

# mean

Mean <- function(x) {
	sum = 0; count = 0
	for (n in x) {
		sum = sum + n
		count = count + 1
	}
	return(sum/count)
}

# standard deviation

standev <- function(x) {
	sum = 0; count = 0
	for (n in x) {
		sum = sum + (n - Mean(x))**2
		count = count + 1
	}
	return((sum/count)**0.5)
}

sstandev <- function(x) {
	sum = 0; count = 0
	for (n in x) {
		sum = sum + (n - Mean(x))**2
		count = count + 1
	}
	return((sum/(count-1))**0.5)
}

# covariance

covariance <- function(x, y) {
	sum = 0; count = 0
	summ <- function(x, y) (x - Mean(x))*(y - Mean(y))
	for (n in summ(x, y)) {
		sum = sum + n
		count = count + 1
	}
	return(sum/(count - 1))
}

# correlation

correlation <- function(x, y) {
	return(covariance(x, y)/(sstandev(x) * sstandev(y)))
}

x <- c(7, 6, 8, 5, 6, 9)
y <- c(12, 8, 12, 10, 11, 13)

correlation(x, y)
system.time(correlation(x, y))
