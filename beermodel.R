
install.packages(c("haven","readr","readxl","foreign","ggplot2","dplyr","randomForest",
                   "foreach","caret","parallel", "doParallel")) 
install.packages("Hmisc")


# * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
setwd("G:/Client Services/Data Science/Ivan Mendoza/2017/201709_NSLC_Premiumization/Data")
#setwd("/export/home/imendoza/QUADS/Projects/201709_NSLC_Premiumization")

library(haven)
library(caret)
library(mice) #For Missing Values Exploration
library(VIM) #For Missing Values Graphs
library(ROCR)
library(coefplot)
library(dplyr)


# * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
# T R A I N I N G      D A T A S E T
# * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 

# Importing data (TRAIN)
beer <- read_sas("./beer_train_r.sas7bdat")
dim(beer)
nobs=dim(beer)[1]

names(beer)
summary(beer)