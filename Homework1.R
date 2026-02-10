#Geography 411 - Homework 1
#Name: Chris Safford
#Analysis of Annual Precipitation Data for Buffalo and San Diego


read.csv("precip .csv")
dim(precip)
mean(precip)
length(precip$Buffalo)
summary(precip)
mean(precip$Buffalo)
mean(precip$SanDiego)
sd(precip$Buffalo)
sd(precip$SanDiego)
str(precip)

hist(precip$Buffalo, freq = FALSE)
curve(dnorm(x, mean=mean(precip$Buffalo),
sd=sd(precip$Buffalo)), add=TRUE)
hist(precip$SanDiego, freq = FALSE)
curve(dnorm(x, mean=mean(precip$SanDiego),
sd=sd(precip$SanDiego)), add=TRUE)

precip$late <- ifelse(precip$Year >= 1982, 1, 0)
precip

precip$late == 1
precip$Year[precip$late == 1]

bfloLate <- precip$Buffalo[precip$late == 1]
bfloEarly <- precip$Buffalo[precip$late == 0]

SDLate <- precip$SanDiego[precip$late == 1]
SDEarly <- precip$SanDiego[precip$late == 0]

t.test(bfloLate, bfloEarly)
t.test(SDLate, SDEarly)

t.test(bfloLate, bfloEarly, alternative = "greater")
t.test(SDLate, SDEarly, alternative = "greater")

t.test(bfloLate, bfloEarly, var.equal = TRUE)
t.test(SDLate, SDEarly, var.equal = TRUE)
