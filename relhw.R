#!/usr/bin/env Rscript
# File: relhw.R
# Name: D.Saravanan
# Date: 30/10/2020
# Script to find the relation between height and weight using women dataset

wdata <- women
print(wdata)

Mean <- function(x) {
	sum = 0; count = 0
	for (n in x) {
		sum = sum + n
		count = count + 1
	}
	return(sum/count)
}

covariance <- function(x, y) {
	sum = 0; count = 0
	summ <- function(x, y) (x - Mean(x))*(y - Mean(y))
	for (n in summ(x, y)) {
		sum = sum + n
		count = count + 1
	}
	return(sum/(count - 1))
}

covariance(wdata$height, wdata$weight)
