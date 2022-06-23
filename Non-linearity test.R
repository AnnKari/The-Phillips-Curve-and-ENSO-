
#Nonlinear relationship between agricultural inflation and economic activity 
#under different weather scenarios

#Non-linearity test

library(readxl)
library(fRegression)

setwd("C:/Users/Anna Karina/Downloads") 
dt=read.csv("Data Base Nonlinearity Test.csv", header = T)

##RESET Test            

#Regression Error Specification Test (RESET) | H0: linearity  
#If the residuals from a linear model are independent, they should not be 
#correlated with the regressors used in the estimating equation or with the 
#fitted values.
#The RESET has a very general alternative hypothesis, so it does not have power
#against all types of nonlinearity.


resetTest(as.matrix(dt[,16])~as.matrix(dt[,9]+dt[,5]+dt[,6]+dt[,3]+dt[,7]),power=5,type="regressor")
#we do reject H0 with a 5% confidence level; there is no linearity in the relatioship 
