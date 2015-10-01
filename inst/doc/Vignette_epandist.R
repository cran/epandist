## ----fig.height=4.2, fig.width=5.25--------------------------------------
require("epandist")
curve(depan(x),xlim=c(-2.5,2.5),yaxs='i',col="blue")  #Mean=0, sd=1
title("The Epanechnikov probability distribution function",cex.main=1)

## ------------------------------------------------------------------------
pepan(x=8,mu=10,r=4) #Calculate probability

## ----results='hold'------------------------------------------------------
qepan(p=0.25,mu=10,r=4) #Lower quantile 
qepan(p=0.75,mu=10,r=4) #Upper quantile

## ------------------------------------------------------------------------
evepan(c=-.5,mu=0,r=5^.5) #Calculate expected value

## ------------------------------------------------------------------------
cepan(ev=1,mu=0,r=5^.5) #Calculate censoring point

## ------------------------------------------------------------------------
evepan(c=100-101,mu=0,r=10) #Calculate expected abatement

## ------------------------------------------------------------------------
censoringpoint<- 101

dist_mean<-100 #Mean prior to censoring

dist_range<-10 #Half of distribution range

x<-repan(1000000,dist_mean,dist_range) #Generating epan-distibuted random data

x[x > censoringpoint]<- censoringpoint #Censoring data

dist_mean-mean(x) #Approximate expected abatement

## ------------------------------------------------------------------------
100-cepan(ev=1,mu=0,r=10) #Calculate censoring point

