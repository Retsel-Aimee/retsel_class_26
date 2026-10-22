install.packages("BSDA")
library(BSDA)
sample_mean <- c(15.84, 15.33, 15.58)
z.test(sample_mean,
       alternative= "greater",
       mu=15,
       sigma.x=0.25)
