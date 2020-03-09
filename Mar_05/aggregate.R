#!/usr/bin/env Rscript
# File: aggregate.R
# Name: D.Saravanan    Date: 05/03/2020
# R script to understand aggregate 

# copy airquality dataframe into airq dataframe
airq <- airquality

# replace NA with 0 in airq dataframe
airq <- replace(airq, is.na(airq),0)

# create field Weather and add to dataframe airq 
airq$Weather <- ifelse(airq$Temp > mean(airq$Temp), "Hot","Cold")

# find mean value of Temp group-by Weather in airq dataframe
mean_value <- aggregate(airq$Temp, by=list(airq$Weather), FUN=mean)
print(mean_value)
cat("\n")

e find mean value of Temp group-by Weather in airq dataframe
mean_value <- aggregate(airq$Temp, by=list(Weather=airq$Weather), FUN=mean)
print(mean_value)
cat("\n")

# find mean value of Temp group-by Weather in airq dataframe
mean_value <- aggregate(Temp~Weather, data=airq, mean)
print(mean_value)
cat("\n")
