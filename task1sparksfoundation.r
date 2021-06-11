library(ggplot2)
#importing data
data = read.csv("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv")
head(data)
#summary of data
summary(data)
#Plotting of model
ggplot(data=data,aes(x=Hours,y=Scores))+
  geom_point()+
  labs(x="Hours Studied", y="Scores",title = "Hours Vs Scores")+
  geom_smooth(method="lm")
#Assigning variable to data
hour=data$Hours
Score=data$Scores
#Comparing Actual and Predicted Scores
actual=Score
hour=data.frame(hour)
predicted=predict(model,hour)
cbind(actual,predicted)
lm(Scores~Hours,data=data)
#Predicted Score if Student studied for 9.25 hrs/day 
test=data.frame(hour=9.25)
predict(model,test)
