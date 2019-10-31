###Tutorial 1 (1/8/17) [Week 2]###
library(fpp)

tute1

head(tute1) #viewing the first 6 rows of the data observations#
tail(tute1) #viewing the last 6 rows of the data observations#

head(tute1, n = 10) #viewing the first 10 rows of the data observations#
tail(tute1, n = 10) #viewing the last 10 rows of the data observations#

#Q5
tute1[,2] #list the 2nd column of the data#
tute1[,"Sales"] #list the "Sales" column of the data#
tute1[5,] #list the 5th row of the data#
tute1[1:10,3:4]
tute1[1:20,]

#Q6 - Convert the data to time series#
tute1 <- ts(tute1[,-1], start = 1981, frequency = 4)
tute1

##Data Visualization##
#Q7 - Plot the time series#
plot(tute1)
plot(tute1[,"Sales"], type = "o", xlab = "Quarters", ylab = "Sales (Thousand $)", main = "Time Series Plot of Sales", col = 1)
#i) trying different colours of the plot
plot(tute1[,"Sales"], type = "o", xlab = "Quarters", ylab = "Sales (Thousand $)", main = "Time Series Plot of Sales", col = 2) #red
plot(tute1[,"Sales"], type = "o", xlab = "Quarters", ylab = "Sales (Thousand $)", main = "Time Series Plot of Sales", col = 3) #green
plot(tute1[,"Sales"], type = "o", xlab = "Quarters", ylab = "Sales (Thousand $)", main = "Time Series Plot of Sales", col = 4) #blue
#ii) trying different line graph/type of the plot
plot(tute1[,"Sales"], type = "l", xlab = "Quarters", ylab = "Sales (Thousand $)", main = "Time Series Plot of Sales", col = 1) #line
plot(tute1[,"Sales"], type = "p", xlab = "Quarters", ylab = "Sales (Thousand $)", main = "Time Series Plot of Sales", col = 1) #points
plot(tute1[,"Sales"], type = "b", xlab = "Quarters", ylab = "Sales (Thousand $)", main = "Time Series Plot of Sales", col = 1) #

plot(tute1[,"Sales"], lty = 3, xlab = "Quarters", ylab = "Sales (Thousand $)", main = "Time Series Plot of Sales", col = 1) #dotted lines

#Q8 - Seasonal plot and Monthplot#
seasonplot(tute1[,"Sales"])
seasonplot(tute1[,"AdBudget"])
seasonplot(tute1[,"GDP"])
monthplot(tute1[,"Sales"])
monthplot(tute1[,"GDP"])
monthplot(tute1[,"AdBudget"])

seasonplot(tute1[,"AdBudget"], 4, year.labels = TRUE, year.labels.left = TRUE, type = "o",
           main = "Seasonal plot: Advertising Budget", ylab = "Sales", xlab = "Quarters", col = 1:25, labelgap = 0.1)
monthplot(tute1[,"AdBudget"], xlab = "Quarters", ylab = "Sales", main = "Monthplot: Advertising Budget")

#Q10 - scatterplots of (AdBudget,Sales) and (GDP,Sales), with Sales on the vertical axes#
plot(Sales~AdBudget, data = tute1)
plot(Sales~GDP, data = tute1)

#Q11 - Scatterplot matrix of three variables#
pairs(as.data.frame(tute1))

#Q12 (trial & error)#
pairs(tute1)

