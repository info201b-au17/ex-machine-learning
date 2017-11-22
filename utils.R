library(dplyr)

showDigit <- function(data, i, col=gray(12:1/12), ...) {
   ## data: a data frame, holding the mnist digits data.
   ## col
   data <- data %>%
      select(-label)
                           # remove the label
   pixels <- as.numeric(data[i,]) %>%
      matrix(nrow=28)
                           # transform data to 28x28 matrix (upside down)
   pixels <- pixels[,28:1]
                           # flip the digit upward
   image(z=pixels, col=col, ...)
}

