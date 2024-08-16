#Loading the data
data<-read.csv("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv")

#Look into some of the observations
head(data)

#summary
summary(data)

#Linear model
x<-data$Hours
y<-data$Scores
model<-lm(y~x)
model
summary(model)
plot(y~x,xlab="Hours", ylab="Scores",col="green",pch=19,main="Scatter diagram of scores against Study Hours")
abline(model)

#Predicting using this model
prediction<-predict(model,data)
prediction

#Prediction of scores when study hours is 9.25
point<-data.frame(x=9.25)
result<-predict(model,point)
result

#so the predicted score of the student is 92.90985 if he studies 9.25 hrs/day.
