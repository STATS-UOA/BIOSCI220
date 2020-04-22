data <- data.frame(treatment = c("C","C","T1","T1","T2","T2"),
                   values = c(6.7,8.6,8.8,10.2,9.4,12.3))
str(data)
## ANOVA by hand
group.means <- aggregate(data$values,list(data$treatment),mean)$x
group.means
## SS between: sum of squares of group means from grand mean
SSB <- sum((rep(group.means,each = 2) - mean(data$values))^2)
## SS within: sum of squares of observations from group means
SSW <- sum((data$values - rep(group.means,each = 2))^2)
## Mean Sq
## Between
MSB <- SSB/2
## Within
MSW <- SSW/3
## F-statistic
F <- MSB/MSW
## p-valur (probability)
pf(F,2,3,lower.tail = FALSE)

## Getting R to do it
anova <- aov(values~treatment,data = data)
summary(anova)
