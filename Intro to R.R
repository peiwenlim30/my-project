install.packages("tidyverse")

#calculator
5+2

#assign value to object
a<-10

#R is object oriented programming language

#logicals
my.weight <- 45
my.weight < 50
my.weight > 50

#vectors (collection of values)
courses <- c("SOCS0100","SOCS0045","POLS0010","SOCS0043")

#5 mins practical
v1 <- c("1","2","3")
v1
v2 <- c("pizza","sushi","juices","chips")
v2
v3 <- c("cats","4","5","6","dogs")
v3

#sequence 
b <- 1:10
length(b)
seq(10,15)
seq(from=10,to=100,by=10)

#vectors in mathematical operations
p <- c(3:10)
mean(p)
p*2
c(1,2,3)+c(4,5,6)

#understand elements within a list (variable)
l1 <- list(c(5, 6), list("leaf", "tree"))
str(l1)
#name elements
l2 <- list(a=c(5,6),b=list("leaf","tree"))
names(l2)
#explore more
length(l2$a)
typeof(l2$a)

#combine vectors to dataframe
candidate <- c("Biden", "Harris", "Trump", "Pence")
age <- c(78, 56, 74, 61)
df <- data.frame(candidate,age)
summary(df)

# add factor (defined by levels)
sex <- c("Male","Female","Male","Male")
factor(sex)
df <- data.frame(candidate, age, sex = factor(sex))
df

# view data
longley$Year
longley[5, ] 
longley[1:2, ] 
longley[1:2, c(5,6)]

# check missing data 
df$tax_return <- factor(c("Yes","Yes","No",NA))
is.na(df)

# remove missing data
sum(c(1,2,3,NA))
sum(c(1,2,3,NA), na.rm = TRUE)

# condition
number <- 10
if(number > 9){print("Bingo")} else {print("Nah")}

# function
find_biden_age <- function(data){
  biden_age <- data[data$candidate == "Biden", "age"]
  return(biden_age)}
find_biden_age(df)

# loops
for (time in c(1:5)) {
  print(c("The course will", "finish", "in", time , "minutes" ))}
  
# clean, set working directory, import data
rm(list = ls())
setwd ()
load()

# tidyverse: most popular way of cleaning and manipulating data in R
library(tidyverse)
# “extract” variables
trust_inst <- select(gss, confinan, conbus, sex, race)
# “extract” observations
gss_race <- filter(gss, race == 1)
# create new variables
m <- gss %>% select(age, race, sex) %>% mutate(age_2 = age^2) %>%
  rename(ethnicity = race)
head(m,3)

# plot
hist(gss$age)
plot(longley$Year, longley$GNP, type="l")
# ggplot
library(ggplot2)
p <- ggplot(data = ,aes(x = , y = )) + geom_point() + geom_smooth()

