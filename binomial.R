#!/usr/bin/env Rscript
# File: binomial.R
# Name: D.Saravanan
# Date: 31/10/2020
# Script for binomial distribution

# factorial
fact <- function(n) {
	fact <- 1
	for (value in 1:n) {
		fact <- fact * value
	}
	return(fact)
}

binomial <- function(k, n, p) {
	return((fact(n)/(fact(k) * fact(n-k))) * p**k * (1 - p)**(n-k))
}
