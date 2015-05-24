Examing the Averages of the Exponential Distribution
========================================================
author: Joostje Peerboom
date: 24 / 05 / 2015
autosize: true

The problem
========================================================

The Central Limit Theorem (CLT) states that when the sample size increases the averages of the date set will follow a normal distribution, regardless of the distribution the data follows. <br>
<br>
In order to demonstrate that the CLT works, a data set is from an exponential distribution. When doing this in R-studio, the value for lambda has to be set everytime<br>
<br>
The Shiny app that was created, allows the user to play around with different values of lambda, different sample sizes and even different amount of simulations to be run<br>
<br>
The Shiny App can be found <a href="https://jpeerboo.shinyapps.io/Data_Products">here</a>

The code to create the dataset & histogram
========================================================


```r
set.seed(1)
lambda <- 0.2
n <- 40
nsimul <- 1000
simulation <- data.frame(ncol=2, nrow = 1000)
names(simulation) <- c("Index", "Mean")

mean_simu <- function(n, lambda){
  mean(rexp(n, lambda))
}

for(i in 1:nsimul) {
  simulation[i, 1] <- i
  simulation[i, 2] <- mean_simu(n, lambda)
}

hist(simulation$Mean, col="green")
```

The Histogram Created of the averages of the Exponential Distribution
========================================================
<center><br>

![plot of chunk unnamed-chunk-2](Exponential_Distribution-figure/unnamed-chunk-2-1.png) 
</center>

Conclusion
========================================================
After creating a dataset containing data that follows an exponential distribution, the averages of this dataset can be plotted as a histogram. By looking at the histogram a normal distribution can be observed. 
<br>
This can be further tested by evaluated the theoretical and sample mean and looking at the normal distribution:
<center>
![plot of chunk unnamed-chunk-3](Exponential_Distribution-figure/unnamed-chunk-3-1.png) 
</center>
