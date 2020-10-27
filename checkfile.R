#!/usr/bin/env Rscript
# File: checkfile.R
# Name: D.Saravanan
# Date: 27/10/2020
# Script to check a file exists

check <- file.exists("/home/saran/Analytics/DataSet/Hr5m.csv")

if (check == "TRUE") 
	print("File exists")
