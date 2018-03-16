rm(list=ls())

str(UCBAdmissions)
UCBAdmissions

admit.fail <- UCBAdmissions$Admits
barplot(UCBAdmissions$Admit)

plot(UCBAdmissions)


#Get marginal frequencies from the origianl table

margin.table(UCBAdmissions, 1) #Admit
margin.table(UCBAdmissions, 2) #Gender
margin.table(UCBAdmissions, 3) #Dept

margin.table(UCBAdmissions)

admit.dept <- margin.table(UCBAdmissions, 3) #Dept
str(admit.dept)
barplot(admit.dept)

admit.dept


prop.table(admit.dept)

round(prop.table(admit.dept),2)


# convert the entire table
admit1 <- as.data.frame.table(UCBAdmissions)
#Repeats each row by freq 
admit2 <- lapply(admit1, function(x) rep(x, admit1$Freq))

#convert to a data frame
admit3 <- as.data.frame(admit2)

admit4 <- admit3[,-4]




























