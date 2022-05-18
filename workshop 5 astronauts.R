
library(tidyverse)
library(janitor)
library(knitr)
library(skimr)
library(tidyverse)
library(dplyr)


astronauts <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-07-14/astronauts.csv')
astronauts <- read_csv("data/astronauts.csv") %>% 
  clean_names() %>% 
  filter(!is.na(number)) %>%  # remove last row (all values are NA)
  mutate(
    sex = if_else(sex == "M", "male", "female"),
    military_civilian = if_else(military_civilian == "Mil", "military", "civilian")
  skim(astronauts)
  astronauts%>% count(sex)
  astronauts%>%count(nationality)%>%
    arrange(desc(nationality))
    astronauts%>%summarise(countno=n_distinct(nationality))
    astronauts%>%count(selection)%>%
      summarise(n_distinct(selection))
  astronauts%>%count(occupation)%>%
    arrange(desc(occupation))
      
    
    
  
    