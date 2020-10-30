#!/usr/bin/env Rscript
# File: covariance.R
# Name: D.Saravanan
# Date: 30/10/2020
# Script to calculate the covariance

Mean <- function(x) {
	sum = 0; count = 0
	for (n in x) {
		sum = sum + n
		count = count + 1
	}
	return(sum/count)
}

#covariance <- function(x, y) {
#	sum = 0; count = 0
#	for (n in 1:length(x)) {
#		sum = sum + (x[n] - Mean(x))*(y[n] - Mean(y))
#		count = count + 1
#	}
#	return(sum/(count - 1))
#}

#covariance <- function(x, y) {
#	summ <- function(x, y) (x - Mean(x))*(y - Mean(y))
#	count = 0
#	for (n in x) {
#		count = count + 1
#	}
#	return(sum(summ(x, y))/(count - 1))
#}

covariance <- function(x, y) {
	sum = 0; count = 0
	summ <- function(x, y) (x - Mean(x))*(y - Mean(y))
	for (n in summ(x, y)) {
		sum = sum + n
		count = count + 1
	}
	return(sum/(count - 1))
}

x <- c(2.1, 2.5, 3.6, 4.0)
y <- c(8, 10, 12, 14)

covariance(x, y)
system.time(covariance(x, y))
