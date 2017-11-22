createRandomData <- function(n) {
   ## This function creates random 2d data
   ## returns a data.frame with two features ('x', 'y')
   ## and a label 'labels'
   ##
   ## n: how many data points
   ##
   R <- 4
                           # radius of arcs
   sd <- 1.6
                           # sd of radius of points
   labels <- factor(rbinom(n, 1, 0.5))
                           # point type
   ## create type0 points
   r <- rnorm(n, mean=R, sd=sd)
   alpha <- runif(n, 0, 1.3*pi)
   x0 <- R + r*cos(pi + alpha)
                           # these are shifted from the origin
   y0 <- R/3 + r*sin(pi + alpha)
   ## create type1 points
   r <- rnorm(n, mean=R, sd=sd)
   alpha <- runif(n, 0, 1.3*pi)
   x1 <- r*cos(alpha)
                           # not shifted
   y1 <- r*sin(alpha)
   ## select correct points
   x <- ifelse(labels == "0", x0, x1)
   y <- ifelse(labels == "0", y0, y1)
   data.frame(x, y, labels)
}
