library(ggplot2)


alpha <- function(x,mean,sd) {
    y <- dnorm(x, mean = mean, sd = sd)
    y[x >= (mean - 2 * sd) & x <= (mean + 2 * sd)] <- NA
    return(y)
}
beta <- function(x,cv,mean,sd){
    y <- dnorm(x, mean = mean, sd = sd)
    y[x > cv] <- NA
    return(y)
}

plt <- ggplot(data.frame(x = c(-10,25, 1)), aes(x = x)) +
        stat_function(fun = dnorm, args = list(0, 3), size = 1.5) +
    stat_function(fun = dnorm, args = list(10, 3), size = 1.5) + 
    theme_void() + stat_function(fun=alpha, geom="area", fill="#84CA72", alpha=0.2,args = list(0, 3)) +
    stat_function(fun=beta, geom="area", fill="red", alpha=0.2,args = list(6,10,3)) + geom_vline(xintercept = 6)

plt



## convert -fuzz 10% -transparent white axes.png axes.png 

for i in $(seq -w 1 60)
do 
    convert -rotate ${i} axes.png axes_rotated_${i}.png
done

convert -loop 0 -delay 20 axes_rotated_*.png  output.gif
