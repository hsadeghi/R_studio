set.seed(20202020)
boxes <- sample(c('GG','SS','GS'),
                size=10^5,replace=T,prob=c(1/3,1/3,1/3))
dagger <- rbinom(10^5,size=1,prob=c(1,.5,0)[as.numeric(as.factor(boxes))])

dtf <- data.frame(boxes=boxes, dagger=dagger)
print(head(dtf))