

#loading libary

library(dplyr)




fish_data <- read.csv("data/Gaeta_etal_CLC_data.csv")


#create new column based on size

fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 200, "big", "small"))
