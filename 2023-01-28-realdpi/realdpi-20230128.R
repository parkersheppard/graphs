
rm(list=ls())

folder <- "D:/Google Drive/GitHub/2023-01-28-realdpi/"
setwd(folder)


#Load and manipulate data
data <- read.csv(paste(folder,"fredgraph.csv",sep=""))
data$year <- as.numeric(substr(data$DATE,1,4))
data$month <- as.numeric(substr(data$DATE,6,7))
data$datef <- data$year + data$month/12 - 1/24
data$realdpi <- data$DSPIC96
data$imppcedf <- data$DSPI / data$DSPIC96
# remaining vars are all real
data$compemp <- data$W209RC1 / data$imppcedf
data$capitalinc <- (data$A041RC1 + data$A048RC1 + data$PIROA) / data$imppcedf
data$pctr <- data$PCTR / data$imppcedf
data$pi <- data$PI / data$imppcedf
data$picgsi <- (data$PI + data$A061RC1) / data$imppcedf
data$taxcgsi <- (data$W055RC1 + data$A061RC1) / data$imppcedf

start_date = 2010
plt_idx = data$datef > start_date
trend_idx = (data$datef > 2015) & (data$datef < 2020)

windowsFonts(bask = windowsFont("Libre Baskerville"))
windowsFonts(mont = windowsFont("Montserrat"))
pltcol1 <- "#397352FF"
pltcol2 <- "#E7A72AFF"
pltcol3 <- "#AA9B5CFF"
pltcol4 <- "#932E4CFF" #"#294629FF"
pltcol5 <- "#10231EFF"

mytitle="Falling Real Disposable Income"
mysubtitle = "After jumping with transfers, inflation drove real DPI below its pre-pandemic trend."

png(filename = "realdpi.png",
    width = 640*1.00,
    height = 480*1.00,
)
par(bg="#DDEEE4")
plot(data$datef[plt_idx],data$picgsi[plt_idx],
    main="",
    xlab="Date",
    ylab="Chained 2012 Dollars (Bil.)",
    family = "bask",
    ylim = c(-5000,25000)
)
rect(par("usr")[1], par("usr")[3],
     par("usr")[2], par("usr")[4],
     col = "#FFFFFF") # Color
lims <- par('usr')

# Add recession shading
#rect(xleft=2001.125, xright=2001.875, ybottom=lims[3], ytop=lims[4], col="#DDDDDD", lty=0)
rect(xleft=2007.875, xright=2009.375, ybottom=lims[3], ytop=lims[4], col="#DDDDDD", lty=0)
rect(xleft=2019.875, xright=2020.375, ybottom=lims[3], ytop=lims[4], col="#DDDDDD", lty=0)
rect(xleft=lims[1],  xright=lims[2],  ybottom=lims[3], ytop=lims[4], lty=1)


mtext(side = 3,
    line = 2,
    adj = 0,
    cex = 2.0,
    mytitle,
    family = "mont",
    font = 2,
)
mtext(side = 3,
    line = 1,
    adj = 0,
    cex = 1.0,
    mysubtitle,
    family = "mont",
)
mtext("@parkersheppard",
    side=1,
    line=3,
    adj=1,
    family = "mont"
)
mtext("Source: FRED",
    side=1,
    line=3,
    adj=0,
    family = "mont"
)
par(bg="#FFFFFF")
legtext = c("Labor Income",
            "Capital Income",
            "Transfers",
            "Taxes",
            "Disposable Personal Income"
)
par(family = "mont")
legend("topleft",
       legend = legtext,
       bty = "n",
       fill = c(pltcol1,pltcol2,pltcol3,pltcol4,pltcol5),
       text.width = strwidth(legtext)*1.75,
       #lty = c(1,2), lwd = c(2,2), 
       #col = c("#397352","#496999"), #D2EFFF
       y.intersp = 1
)



# Calculations

# Lines from data
line1 <- data$compemp[plt_idx]
line2 <- line1 + data$capitalinc[plt_idx]
line3 <- line2 + data$pctr[plt_idx]
line4 <- -data$taxcgsi[plt_idx]

# Add area plots
start_month <- min(data$datef[plt_idx])
end_month <- max(data$datef[plt_idx])
xseq <- seq(start_month, end_month, by=1/12)
abline(0,0,lty=2)
polygon(c(xseq,rev(xseq)), c(rep(0,length(xseq)),rev(line1)),col=pltcol1,border="#FFFFFF",lty=1)
polygon(c(xseq,rev(xseq)), c(line1              ,rev(line2)),col=pltcol2,border="#FFFFFF",lty=1)
polygon(c(xseq,rev(xseq)), c(line2              ,rev(line3)),col=pltcol3,border="#FFFFFF",lty=1)
polygon(c(xseq,rev(xseq)), c(rep(0,length(xseq)),rev(line4)),col=pltcol4,border="#FFFFFF",lty=1)
#polygon(c(xseq,rev(xseq)), c(line3,rev(line3+line4)),col=pltcol4,lty=0) #Check taxes net properly
lines(data$datef[plt_idx],data$DSPIC96[plt_idx],col=pltcol5,lwd=2)

# Fit pre-pandmeic trend
pptrend <- lm(data$DSPIC96[trend_idx] ~ data$datef[trend_idx])
summary(pptrend)
coef(pptrend)
exmonths <- seq(2020+3/12-1/24,end_month,1/12)
extrend <- coef(pptrend)[1] + coef(pptrend)[2] * exmonths
segments(x0=min(exmonths),y0=min(extrend),x1=max(exmonths),y1=max(extrend),lty=2)


text(x=2018.5,y=23500,
    labels="Pre-pandemic trend",
    family = "mont",
    adj = 0
)
arrows(x0=2022.125,y0=22500,x1=2022.125,y=16500,length=0.125)


dev.off()


