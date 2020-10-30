#!/usr/bin/env Rscript
# File: dispersion.R
# Name: D.Saravanan
# Date: 30/10/2020
# Script of measure of dispersion

population <- sample.int(100, 10000, replace=TRUE)

sample1 <- sample(population, 100)
sample2 <- sample(population, 100)

# range
range <- function(x) {
	return(max(x) - min(x))
}

range(population)
range(sample1)
range(sample2)

# quartile

quantile(population, c(0.25, 0.50, 0.75))
quantile(sample1, c(0.25, 0.50, 0.75))
quantile(sample2, c(0.25, 0.50, 0.75))

# IQR

IQR(population)
IQR(sample1)
IQR(sample2)

# variance

Mean <- function(x) {
	sum = 0; count = 0
	for (n in x) {
		sum = sum + n
		count = count + 1
	}
	return(sum/count)
}

variance <- function(x) {
	sum = 0; count = 0
	for (n in x) {
		sum = sum + (n - Mean(x))**2
		count = count + 1
	}
	return(sum/(count))
}


svariance <- function(x) {
	sum = 0; count = 0
	for (n in x) {
		sum = sum + (n - Mean(x))**2
		count = count + 1
	}
	return(sum/(count-1))
}

variance(population)
svariance(sample1)
svariance(sample2)

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

standev(population)
sstandev(sample1)
sstandev(sample2)

sqrt(variance(population))
sqrt(svariance(sample1))
sqrt(svariance(sample2))
