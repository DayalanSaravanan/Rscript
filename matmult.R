#!/usr/bin/env Rscript
# File: matmult.R
# Name: D.Saravanan
# Date: 17/10/2020
# Script to perform matrix multiplication

A = matrix(c(1, 2, 3, 4), 2, 2, byrow=TRUE)
B = matrix(c(5, 6, 7, 8), 2, 2, byrow=TRUE)

M = A %*% B
print(M)
