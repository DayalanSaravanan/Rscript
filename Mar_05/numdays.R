#!/usr/bin/env Rscript
# File: numdays.R
# Name: D.Saravanan    Date: 05/03/2020
# R script to list number of days in a given month of a year

date_value <- data.frame(dat=as.Date("2001-01-01", format="%Y-%m-%d") + 0:729)
dat <- date_value$dat 
numdays <- aggregate(dat, by=list(Month=substr(dat,6,7), Year=substr(dat,1,4)),length)
names(numdays)[names(numdays)=='x'] <- 'Ndays'
order <- c("Year", "Month", "Ndays")
numdays <- numdays[,order]
print(numdays)
