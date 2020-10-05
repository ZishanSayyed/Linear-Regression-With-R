#Simple Linear Regression
##In this regression task we will predict the percentage of marks that a student is expected to score based upon the number of hours they studied. 
#This is a simple linear regression task as it involves just two variables

#importing the data
library(readr)
data=read.csv("C:/Users/ADMIN/OneDrive/Desktop/linear regression/studytym_vs_marks.csv",header = TRUE)
#Viewing the data
View(data)
head(data)
#scatter plot betwwen hours study and marks scroed to see the relation between them 
plot(data$Hours,data$Scores)

#creating a modle of simple linear regression
library(MASS)
lm(data$Scores~data$Hours)  #here score is a dependent variable of no of hr study.
#to see a regrassion line in scatter plot
abline( 2.599    ,    9.761  )
summary(lm(data$Scores~data$Hours))
#conclusions based on summary 
#as we see that T-vale = <2e-16 *** which is less than 0.05 therefore 
#study hrs is a significant predictor of scores
#how much with is given byy R seq value which is 9.7607 that means score is 9.7607 or Almost 98% significant to hours student study


#doing prediction
#predicting scroe of student of study 9.2
data_model=lm(data$Scores~data$Hours)
predict(data_model)[7]

#residual or error in prediction
#error in prediction  
residuals(data_model)[7]

#actual marks score by student 
data$Scores[7]

#conclusion: we predicted that student will get 92.39779 marks after studing 9.2 hr per day 
#but student scrore 88 marks error in our prediction is -4.39779

plot(data$Scores,predict(data_model),xlab = "actual score",ylab = "predicted scores")
#this is the plot of actual vs predicted score
cor(data$Scores,predict(data_model))
cor(data$Scores,predict(data_model))^2

hist(residuals(data_model))
#show that how much error is made
