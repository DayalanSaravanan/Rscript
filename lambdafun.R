#!/usr/bin/env Rscript
# File: lambdafun.R
# Name: D.Saravanan
# Date: 29/10/2020
# Script using lambda function

(function(x) x**2) (41)

square <- function(x) x**2
square(41)

(function(x, y) x**y) (7, 2)

N = function(x, y) x**y
N(7, 2)
