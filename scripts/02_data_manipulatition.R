#install tidyverse package
pak::pkg_install("tidyverse")

#load the package
library(tidyverse)
#build-in dataset
data()

#import data
data <- read.csv("data/annotations_ahb.csv")

#store in variable
penguins_data <- penguins 

#data exploratition
# check column name
names(penguins_data)

#1_examine frist few row
head(penguins_data)
head(penguins_data,10)
head(penguins_data,n=10)


#examine last few row
tail(penguins_data)

#3. dimentition of data(row x column)
dim(penguins_data)
nrow(penguins_data)
ncol(penguins_data)

#4. sampling data
sample(penguins_data)
sample_n(penguins_data, 20)


sample_frac(penguins_data, .20)

#missing value
is.na(penguins_data)
sum(is.na(penguins_data))
colSums(is.na(penguins_data))

#6. check duplicates
duplicated(penguins_data)
sum(duplicated(penguins_data))

# data manipulatiton
#dplyr_functition(data, do_something)

#1. select columns, column er jonono kori
#select single column
#select multipla column
#select range of column
select(penguins_data,sex)
select(penguins_data,species,sex)


select(penguins_data, 1:4)
select(penguins_data, c(1,3,5))






#filter rows, row er jonno kori
# filtering data based on citeria
body_mass <- filter(penguins_data, body_mass >3000)


penguins_data <- filter(penguins_data, sex == "male")





#create a new column
mutate(penguins_data, status =ifelse(body_mass >4050,"high","low"))




#pipe operator(|>, ctrl+shift+m , chaning method)
select_column<-select(penguins_data,species,sex,body_mass)





filter(select_column, body_mass>4000)

#chaning mehtod
penguins_data |> 
  select(species,sex,body_mass) |> 
  filter(body_mass>4000) |> 
  filter(sex != "NA")





#AND
and_data <- penguins_data |> 
  select(species,sex,body_mass) |> 
  filter(sex == "male"& body_mass>4000)



#OR
or_data<- penguins_data |> 
  select(species,sex,body_mass) |> 
  filter(sex == "male"|body_mass>4000)


#data summery
glimpse(penguins_data)
summary(penguins_data)
