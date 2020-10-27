#!/usr/bin/env Rscript
# File: oxygen.R
# Name: D.Saravanan    Date: 05/03/2020
# R script to create a dataframe with patient ID, test time(1,2,3) and populate
# the Oxygen level at Artilery (PAO2) and at CVein (PCVO2) randomly.

# library reshape for melt and cast
library('reshape')

for(val in seq(1,20,by=1)) {

#cat('Sample No.: ', val,"\n") 
print(paste('Sample No.:', val))

# create patient ID from 1 to 3 with each No. of repeat is 3
ID <- c(rep(1:3,each=3))

# create record time from 1 tp 3 with No. of repeat is 3
Time <- c(rep(1:3,3))

# populate randomly using rnorm(random normal variate) of field: PAO2
# with No. of samples=9, mean=70, standard deviation=10
PAO2 <- round(rnorm(9,mean=70,sd=10))

# populate randomly using rnorm(random normal variate) of field: PCVO2
# with No. of samples=9, mean=40, standard deviation=8 
PCVO2 <- round(rnorm(9,mean=40,sd=8))

# create dataframe of name ptdata with ID, Time, PAO2 and PCVO2
ptdata <- data.frame(ID, Time, PAO2, PCVO2)

# melt the dataframe ptdata with choosing ID and Time  
pmdata <- melt(ptdata, id=c("ID","Time"))

# cast the dataframe pmdata with ID into variable and calculate mean value
#(example: for ID=1,2,3 calculate the mean value of PAO2 and PCVO2
pcdata <- cast(pmdata, ID~variable,mean)

# print the casted dataframe
print(pcdata)
cat("\n")

}
