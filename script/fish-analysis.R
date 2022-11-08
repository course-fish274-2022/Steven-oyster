

#loading library

library(dplyr)




fish_data <- read.csv("data/Gaeta_etal_CLC_data.csv")


#create new column based on size of fish length
fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

#need to remove to remove the fish with a scalelength of less than 1 mm
fish_data_cat_fixed <- fish_data_cat %>%
  filter(scalelength > 1)
