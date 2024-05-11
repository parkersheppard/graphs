# Plot Colors
pltcol1 <- "#397352FF"
pltcol2 <- "#688c61FF"
pltcol3 <- "#b2ab75FF"
pltcol4 <- "#dad8b7FF" #"#294629FF"
pltcol5 <- "#68ace5FF"
pltcol6 <- "#467fa7FF"

yrs <- c(1989,1992,1995,1998,2001,2004,2007,2010,2013,2016,2019,2022)

# By percentile of income
data <- read.csv(file.choose())

temp <- cbind(data$Debt[data$Category=="Less than 20"] / data$Assets[data$Category=="Less than 20"],
              data$Debt[data$Category=="20-39.9"] / data$Assets[data$Category=="20-39.9"],
              data$Debt[data$Category=="40-59.9"] / data$Assets[data$Category=="40-59.9"],
              data$Debt[data$Category=="60-79.9"] / data$Assets[data$Category=="60-79.9"],
              data$Debt[data$Category=="80-89.9"] / data$Assets[data$Category=="80-89.9"],
              data$Debt[data$Category=="90-100"] / data$Assets[data$Category=="90-100"])
temp <- temp * 100
ymin <- min(temp)
ymax <- max(temp)
plot(yrs, temp[,1],type="n",ylim=c(ymin,ymax),
     
     main="Debt-to-Assets by Income",
     xlab="Year",ylab="Debt as a Percentage of Assets")
lines(yrs, temp[,1],col=pltcol1,lwd=2)
lines(yrs, temp[,2],col=pltcol2,lwd=2)
lines(yrs, temp[,3],col=pltcol3,lwd=2)
lines(yrs, temp[,4],col=pltcol4,lwd=2)
lines(yrs, temp[,5],col=pltcol5,lwd=2)
lines(yrs, temp[,6],col=pltcol6,lwd=2)
legend("topleft",legend=c("Less than 20","20-39.9","40-59.9","60-79.9","80-89.9","90-100"),
       col=c(pltcol1,pltcol2,pltcol3,pltcol4,pltcol5,pltcol6),
       lwd=c(2,2,2,2,2,2))

temp <- cbind(data$Debt[data$Category=="Less than 20"] / data$Before_Tax_Income[data$Category=="Less than 20"],
              data$Debt[data$Category=="20-39.9"] / data$Before_Tax_Income[data$Category=="20-39.9"],
              data$Debt[data$Category=="40-59.9"] / data$Before_Tax_Income[data$Category=="40-59.9"],
              data$Debt[data$Category=="60-79.9"] / data$Before_Tax_Income[data$Category=="60-79.9"],
              data$Debt[data$Category=="80-89.9"] / data$Before_Tax_Income[data$Category=="80-89.9"],
              data$Debt[data$Category=="90-100"] / data$Before_Tax_Income[data$Category=="90-100"])
temp <- temp * 100
ymin <- min(temp)
ymax <- max(temp)
plot(yrs, temp[,1],type="n",ylim=c(ymin,ymax),
     main="Debt-to-Income by Net Worth",
     xlab="Year",ylab="Debt as a Percentage of Assets")
lines(yrs, temp[,1],col=pltcol1,lwd=2)
lines(yrs, temp[,2],col=pltcol2,lwd=2)
lines(yrs, temp[,3],col=pltcol3,lwd=2)
lines(yrs, temp[,4],col=pltcol4,lwd=2)
lines(yrs, temp[,5],col=pltcol5,lwd=2)
lines(yrs, temp[,6],col=pltcol6,lwd=2)
legend("topleft",legend=c("Less than 20","20-39.9","40-59.9","60-79.9","80-89.9","90-100"),
       col=c(pltcol1,pltcol2,pltcol3,pltcol4,pltcol5,pltcol6),
       lwd=c(2,2,2,2,2,2))

# Education installment loans
temp <- cbind(data$Education_Installment_Loans[data$Category=="Less than 20"] / data$Assets[data$Category=="Less than 20"],
              data$Education_Installment_Loans[data$Category=="20-39.9"] / data$Assets[data$Category=="20-39.9"],
              data$Education_Installment_Loans[data$Category=="40-59.9"] / data$Assets[data$Category=="40-59.9"],
              data$Education_Installment_Loans[data$Category=="60-79.9"] / data$Assets[data$Category=="60-79.9"],
              data$Education_Installment_Loans[data$Category=="80-89.9"] / data$Assets[data$Category=="80-89.9"],
              data$Education_Installment_Loans[data$Category=="90-100"] / data$Assets[data$Category=="90-100"])
temp <- temp * 100
ymin <- min(temp)
ymax <- max(temp)
plot(yrs, temp[,1],type="n",ylim=c(ymin,ymax),
     main="Debt-to-Assets by Income",
     xlab="Year",ylab="Education Installment Loans as a Percentage of Assets")
lines(yrs, temp[,1],col=pltcol1,lwd=2)
lines(yrs, temp[,2],col=pltcol2,lwd=2)
lines(yrs, temp[,3],col=pltcol3,lwd=2)
lines(yrs, temp[,4],col=pltcol4,lwd=2)
lines(yrs, temp[,5],col=pltcol5,lwd=2)
lines(yrs, temp[,6],col=pltcol6,lwd=2)
legend("topleft",legend=c("Less than 20","20-39.9","40-59.9","60-79.9","80-89.9","90-100"),
       col=c(pltcol1,pltcol2,pltcol3,pltcol4,pltcol5,pltcol6),
       lwd=c(2,2,2,2,2,2))

temp <- cbind(data$Education_Installment_Loans[data$Category=="Less than 20"] / data$Before_Tax_Income[data$Category=="Less than 20"],
              data$Education_Installment_Loans[data$Category=="20-39.9"] / data$Before_Tax_Income[data$Category=="20-39.9"],
              data$Education_Installment_Loans[data$Category=="40-59.9"] / data$Before_Tax_Income[data$Category=="40-59.9"],
              data$Education_Installment_Loans[data$Category=="60-79.9"] / data$Before_Tax_Income[data$Category=="60-79.9"],
              data$Education_Installment_Loans[data$Category=="80-89.9"] / data$Before_Tax_Income[data$Category=="80-89.9"],
              data$Education_Installment_Loans[data$Category=="90-100"] / data$Before_Tax_Income[data$Category=="90-100"])
temp <- temp * 100
ymin <- min(temp)
ymax <- max(temp)
plot(yrs, temp[,1],type="n",ylim=c(ymin,ymax),
     main="Education Debt-to-Income by Net Worth",
     xlab="Year",ylab="Education Debt as a Percentage of Before-Tax-Income")
lines(yrs, temp[,1],col=pltcol1,lwd=2)
lines(yrs, temp[,2],col=pltcol2,lwd=2)
lines(yrs, temp[,3],col=pltcol3,lwd=2)
lines(yrs, temp[,4],col=pltcol4,lwd=2)
lines(yrs, temp[,5],col=pltcol5,lwd=2)
lines(yrs, temp[,6],col=pltcol6,lwd=2)
legend("topleft",legend=c("Less than 20","20-39.9","40-59.9","60-79.9","80-89.9","90-100"),
       col=c(pltcol1,pltcol2,pltcol3,pltcol4,pltcol5,pltcol6),
       lwd=c(2,2,2,2,2,2))

temp <- cbind(data$Home_Secured_Debt[data$Category=="Less than 20"] / data$Before_Tax_Income[data$Category=="Less than 20"],
              data$Home_Secured_Debt[data$Category=="20-39.9"] / data$Before_Tax_Income[data$Category=="20-39.9"],
              data$Home_Secured_Debt[data$Category=="40-59.9"] / data$Before_Tax_Income[data$Category=="40-59.9"],
              data$Home_Secured_Debt[data$Category=="60-79.9"] / data$Before_Tax_Income[data$Category=="60-79.9"],
              data$Home_Secured_Debt[data$Category=="80-89.9"] / data$Before_Tax_Income[data$Category=="80-89.9"],
              data$Home_Secured_Debt[data$Category=="90-100"] / data$Before_Tax_Income[data$Category=="90-100"])
temp <- temp * 100
ymin <- min(temp)
ymax <- max(temp)
plot(yrs, temp[,1],type="n",ylim=c(ymin,ymax),
     main="Home-Secured Debt-to-Income by Net Worth",
     xlab="Year",ylab="Education Debt as a Percentage of Before-Tax-Income")
lines(yrs, temp[,1],col=pltcol1,lwd=2)
lines(yrs, temp[,2],col=pltcol2,lwd=2)
lines(yrs, temp[,3],col=pltcol3,lwd=2)
lines(yrs, temp[,4],col=pltcol4,lwd=2)
lines(yrs, temp[,5],col=pltcol5,lwd=2)
lines(yrs, temp[,6],col=pltcol6,lwd=2)
legend("topleft",legend=c("Less than 20","20-39.9","40-59.9","60-79.9","80-89.9","90-100"),
       col=c(pltcol1,pltcol2,pltcol3,pltcol4,pltcol5,pltcol6),
       lwd=c(2,2,2,2,2,2))

temp <- cbind(data$Home_Secured_Debt[data$Category=="Less than 20"] / data$Assets[data$Category=="Less than 20"],
              data$Home_Secured_Debt[data$Category=="20-39.9"] / data$Assets[data$Category=="20-39.9"],
              data$Home_Secured_Debt[data$Category=="40-59.9"] / data$Assets[data$Category=="40-59.9"],
              data$Home_Secured_Debt[data$Category=="60-79.9"] / data$Assets[data$Category=="60-79.9"],
              data$Home_Secured_Debt[data$Category=="80-89.9"] / data$Assets[data$Category=="80-89.9"],
              data$Home_Secured_Debt[data$Category=="90-100"] / data$Assets[data$Category=="90-100"])
temp <- temp * 100
ymin <- min(temp)
ymax <- max(temp[,2:6])
plot(yrs, temp[,1],type="n",ylim=c(ymin,ymax),
     main="Home-Secured Debt-to-Assets by Net Worth",
     xlab="Year",ylab="Education Debt as a Percentage of Assets")
#lines(yrs, temp[,1],col=pltcol1,lwd=2)
lines(yrs, temp[,2],col=pltcol2,lwd=2)
lines(yrs, temp[,3],col=pltcol3,lwd=2)
lines(yrs, temp[,4],col=pltcol4,lwd=2)
lines(yrs, temp[,5],col=pltcol5,lwd=2)
lines(yrs, temp[,6],col=pltcol6,lwd=2)
legend("topleft",legend=c("Less than 20","20-39.9","40-59.9","60-79.9","80-89.9","90-100"),
       col=c(pltcol1,pltcol2,pltcol3,pltcol4,pltcol5,pltcol6),
       lwd=c(2,2,2,2,2,2))


# By percentile of net worth
data <- read.csv(file.choose())

# Debt as share of assets
temp <- cbind(data$Debt[data$Category=="Less than 25"] / data$Assets[data$Category=="Less than 25"],
              data$Debt[data$Category=="25-49.9"] / data$Assets[data$Category=="25-49.9"],
              data$Debt[data$Category=="50-74.9"] / data$Assets[data$Category=="50-74.9"],
              data$Debt[data$Category=="75-89.9"] / data$Assets[data$Category=="75-89.9"],
              data$Debt[data$Category=="90-100"] / data$Assets[data$Category=="90-100"])
temp <- temp * 100
ymin <- min(temp)
ymax <- max(temp)
plot(yrs, temp[,1],type="n",ylim=c(ymin,ymax),
     main="Debt-to-Assets by Net Worth",
     xlab="Year",ylab="Debt as a Percentage of Assets")
lines(yrs, temp[,1],col=pltcol1,lwd=2)
lines(yrs, temp[,2],col=pltcol2,lwd=2)
lines(yrs, temp[,3],col=pltcol3,lwd=2)
lines(yrs, temp[,4],col=pltcol4,lwd=2)
lines(yrs, temp[,5],col=pltcol5,lwd=2)
legend("topleft",legend=c("Less than 25","25-49.9","50-74.9","75-89.9","90-100"),
       col=c(pltcol1,pltcol2,pltcol3,pltcol4,pltcol5),
       lwd=c(2,2,2,2,2))


# Debt as share of income
temp <- cbind(data$Debt[data$Category=="Less than 25"] / data$Before_Tax_Income[data$Category=="Less than 25"],
              data$Debt[data$Category=="25-49.9"] / data$Before_Tax_Income[data$Category=="25-49.9"],
              data$Debt[data$Category=="50-74.9"] / data$Before_Tax_Income[data$Category=="50-74.9"],
              data$Debt[data$Category=="75-89.9"] / data$Before_Tax_Income[data$Category=="75-89.9"],
              data$Debt[data$Category=="90-100"] / data$Before_Tax_Income[data$Category=="90-100"])
temp <- temp * 100
ymin <- min(temp)
ymax <- max(temp)
plot(yrs, temp[,1],type="n",ylim=c(ymin,ymax),
     main="Debt-to-Income by Net Worth",
     xlab="Year",ylab="Debt as a Percentage of Before-Tax Income")
lines(yrs, temp[,1],col=pltcol1,lwd=2)
lines(yrs, temp[,2],col=pltcol2,lwd=2)
lines(yrs, temp[,3],col=pltcol3,lwd=2)
lines(yrs, temp[,4],col=pltcol4,lwd=2)
lines(yrs, temp[,5],col=pltcol5,lwd=2)
legend("topleft",legend=c("Less than 25","25-49.9","50-74.9","75-89.9","90-100"),
       col=c(pltcol1,pltcol2,pltcol3,pltcol4,pltcol5),
       lwd=c(2,2,2,2,2))




