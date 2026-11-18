library(tidyverse)
library(palmerpenguins)
library(ggthemes)
penguins
glimpse(penguins)
levels((penguins$species))
mean(penguins$body_mass_g)
?penguins
ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
)+
  geom_point(mapping = aes(colour = species, shape = species))+
  geom_smooth(method = "lm")+
  labs(
    title = "Body mass and flipper length",
    subtitle = "aca escribi otra cosa",
    x = "Flipper L (mm)", y = "Body M (g)",
    color = "species", shape = "Species"
  )+
  scale_color_colorblind()
