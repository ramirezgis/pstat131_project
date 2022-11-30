### coding here

### download libraries
library(tidymodels)
library(tidyverse)
library(dplyr)
library(corrr)
library(corrplot)
library(ggplot2)
library(discrim)
library(klaR)
library(glmnet)
library(ISLR)
library(rpart.plot)
library(vip)
library(randomForest)
library(xgboost)
library(ranger)
library(tidyr)
library(janitor)
tidymodels_prefer()

#predicting cancellation of booking

#hotel: h1 = resort hotel, h2 = city hotel
#is_cancelled = not cancel (0); 1 = yes

hotel_booking <- read.csv("hotel_bookings.csv")
set.seed(1234)

### cleaning/preparing data/see missing data
summary(hotel_booking)
summarize_all(hotel_booking)

#clean variable names
hotel_booking <- hotel_booking %>%
  clean_names()

#unselect unimportant variables
#country, agent, and company
#deselect unimportant names
hotelbooking <- hotel_booking %>%
  select()