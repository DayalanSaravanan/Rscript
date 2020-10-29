#!/usr/bin/env Rscript
# File: ctendency.R
# Name: D.Saravanan
# Date: 28/10/2020
# Script to measure the central tendency of a data

# generate a population of size 10000 from 1 to 100 random values
population <- sample.int(100, 10000, replace=TRUE)

# draw a sample of size 100 from population
sample1 <- sample(population, 100)

# mean
Mean <- function(x) {
	sum = 0; count = 0
	for (n in x) {
		sum = sum + n
		count = count + 1
	}
	return(sum/count)
}

system.time(Mean(sample1))
system.time(mean(sample1))

# median
Median <- function(x) {
	count = 0
	for (n in x) {
		count = count + 1
	}
	return((count + 1)/2)
}

system.time(Median(sample1))
system.time(median(sample1))

# mode
Mode <- function(x) {
	ux <- unique(x)
	ux[which.max(tabulate(match(x, ux)))]
}

system.time(Mode(sample1))
