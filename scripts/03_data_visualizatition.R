#install packages
pak::pkg_install(c("ggsci","ggthemes","hrbrthemes"))


#load the packages
library(tidyverse)
library(ggsci)
library(ggthemes)
library(hrbrthemes)

#import_data
penguins_data <- penguins

#data visualizatition template
ggplot(data, aes(x= , y=))+
  geom type()

#histroygram
basic <- ggplot(penguins_data, aes(x= body_mass))+
  geom_histogram()+
  labs(
    x = "Body Mass",
    y = "Frequency",
    title = "Distribution of Body Mass",
    subtitle = "A subtitle",
    caption = "data source: Rstudio"
  )

#themes
basic + theme_economist()
basic + theme_bw()
basic + theme_ipsum_pub()

#journal color theme
basic + scale_fill_npg()

#density
ggplot(penguins_data, aes(body_mass))+
  geom_density()

#boxplot
ggplot(penguins_data, aes(x=sex, y= body_mass))+
  geom_boxplot()

#bar chart
penguins_data |> 
  filter(sex !="NA") |> 
  ggplot(aes(x=sex))+
  geom_bar()
#color by category or grp
ggplot(penguins_data, aes(x=sex, fill =sex))+
  geom_density()+
  facet_wrap(~sex)



