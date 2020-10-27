#!/usr/bin/env Rscript
# File: oddcount.R
# Name: D.Saravanan
# Date: 22/10/2020
# Script to count the number of odd integers

oddcount <- function(x) {
	n <- 0
	for (m in x) {
		if (m %% 2 == 1) n <- n + 1
	}
	return(n)
}

oddcount(c(1, 2, 3, 7, 9, 15))
