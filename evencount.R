#!/usr/bin/env Rscript
# File: evencount.R
# Name: D.Saravanan
# Date: 22/10/2020
# Script to count the number of even integers

evencount <- function(x) {
	n <- 0
	for (m in x) {
		if (m %% 2 == 0) n <- n + 1
	}
	return(n)
}

evencount(c(1, 2, 3, 7, 9, 15))
