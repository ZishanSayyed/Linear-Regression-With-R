# Linear-Regression-With-R
##In this regression task we will predict the percentage of marks that a student is expected to score based upon the number of hours they studied. 
#This is a simple linear regression task as it involves just two variables

#importing the data
library(readr)
data=read.csv("C:/Users/ADMIN/OneDrive/Desktop/linear regression/studytym_vs_marks.csv",header = TRUE)


#Viewing the data
View(data)
head(data)


#scatter plot between hours study and marks scroed to see the relation between them 
plot(data$Hours,data$Scores)



#creating a model of simple linear regression
library(MASS)
lm(data$Scores~data$Hours)  #here score is a dependent variable of no of hr study.
