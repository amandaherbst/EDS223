library(tidyverse)

example <- data.frame(temperature = c(1:1000)) %>% 
  mutate(m = (5.7*10^-8)*temperature^4,
         lambda = 2898/temperature)

# how much radiation is emitted as temperature increases
ggplot(data = example) +
  geom_point(aes(x = temperature, y = m))

# wavelength of radiation that comes off of an object as temperature increases
ggplot(data = example) +
  geom_point(aes(x = temperature, y = lambda))
