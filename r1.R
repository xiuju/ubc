install.packages("gapminder")
install.packages("tidyverse")
library(gapminder)

library(tidyverse)

gapminder %>% 
  select(year,lifeExp) %>% 
  head(4)

gapminder %>%
  filter(country == "Cambodia") %>%
  select(year, lifeExp)


install.packages("devtools")
library(devtools)
install_github("wilkox/ggfittext")
install_github("wilkox/treemapify")
library(treemapify)

# Create Random Data
country <- c("Ireland","England","France","Germany","USA","Spain")
job <- c("IT","SOCIAL","Project Manager","Director","Vice-President")

mydf <- data.frame(countries = sample(country,100,replace = TRUE),
                   career = sample(job,100,replace=TRUE),
                   participent = sample(1:100, replace = TRUE)
)

# Set Up the coords
treemap_coords <- treemapify(mydf, 
                             area="participent", 
                             fill="countries", 
                             label="career", 
                             group="countries")

# Plot the results using the Green Pallete
ggplotify(treemap_coords, 
          group.label.size.factor = 2,
          group.label.colour = "white",
          label.colour = "black",
          label.size.factor = 1) + 
  labs(title="Work Breakdown") +
  scale_colour_brewer(palette = "Greens")