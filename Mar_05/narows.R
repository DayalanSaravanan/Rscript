#!/usr/bin/env Rscript
# File: missing.R
# Name: D.Saravanan    Date: 05/03/2020
# R script to calculate the no. of rows with NA values in a dataframe

airq <- airquality
total_rows <- nrow(airq)
non_na_rows <- nrow(na.exclude(airq))
na_rows <- total_rows - non_na_rows
print(paste("The number of rows in which NA is present is", na_rows))
