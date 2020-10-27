#!/usr/bin/env Rscript
# File: analys.R
# Name: D.Saravanan
# Date: 27/10/2020
# Script to analyse Hr5m data

# data frame
df <- data.table::fread("/home/saran/Analytics/DataSet/Hr5m.csv")

# structure of data frame
str(df)

# dimensions of data frame
dim(df)
# number of rows
nrow(df)
# number of columns
ncol(df)

# print first few rows
head(df)
# print last few rows
tail(df)
