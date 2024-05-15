setwd("~/Documents/Coursera/CERT_IBM DSPC/IBM DSPC/01_WhatIsDataScience/0 - Data/")
fire <- read.csv("forest+fires/forestfires.csv")
library(tidyverse)
library(viridis)

# month order
monthChron <- c("jan",
                "feb",
                "mar",
                "apr",
                "may",
                "jun",
                "jul",
                "aug",
                "sep",
                "oct",
                "nov",
                "dec")

fire %>% 
  mutate(month = fct_relevel(month, monthChron)) %>% 
  ggplot(aes(
    x = month,
    y = FFMC,
    fill = month)) +
  geom_violin(position='dodge', alpha=0.5) +
  scale_fill_viridis(discrete=T, option="magma") +
  ylim(0,100) +
  theme(legend.position = "none")