#install tidyverse
install.packages("tidyverse")

#load tidyverse
library(tidyverse)

#set working directory
setwd("~/Downloads")
getwd()

#read csv
fire_data <- read.csv("Crop_Range_GOES0901_R.csv")

#practice filtering without pipe function
filter(fire_data, jday>227)

#practice selecting columns with pipe function and filter results by jday > 227
fire_data %>% select(year:gmt, frp, BinTime) %>% filter(jday > 227)
