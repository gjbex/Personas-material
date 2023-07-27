#!/usr/bin/env Rscript

# script to plot the Airy function
# https://en.wikipedia.org/wiki/Airy_function
# the function values are computed using the GNU Scientific Library

# Load the ggplot2 and gsl libraries
library(ggplot2)
library(gsl)

# Create a data frame, the x-range runs from 0.0 to 2.0
df <- data.frame(x = seq(0.0, 2.0, length.out = 100))

# compute the Airy function values
df$y <- airy_Ai(df$x)

# Create a ggplot object
p <- ggplot(df, aes(x = x, y = y)) + geom_point()

# Save the plot to a file
ggsave("airy.eps", plot = p, width = 4, height = 4, dpi = 300)
