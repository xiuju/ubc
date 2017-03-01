install.packages("gapminder")
install.packages("tidyverse")
library(gapminder)

library(tidyverse)

gapminder %>% 
  select(year,lifeExp) %>% 
  head(4)

