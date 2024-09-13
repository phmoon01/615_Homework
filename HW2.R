### Paul Moon ###

### Homework 2                                         ###
### GGPlot Basics ###

#Put your code in this file. Make sure you assign the relevant values to the correct variable names, which are given below. 
#Uncomment the variables as you assign your final values/functions/results to them.

library(dplyr)
library(tidyr)
library(tibble)
library(ggplot2)
library(stringr)# This loads the packages necessary to run your plots. Do not delete or comment this out.

### Exercise 1
SPX_1Month <- read.csv("SPX-1Month.csv")

spx_plot1 <- ggplot(SPX_1Month, aes(x = Date, y = Close.Last, group = 1)) + 
  geom_line() + 
  geom_point() 
spx_plot1

spx_plot2 <- ggplot(SPX_1Month, aes(x = Date, y = Close.Last, group = 1)) + 
  geom_line() + 
  geom_point() + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) + 
  labs(
    title = "S&P500 - Closing Price over the Last Month",
    x = "Date", 
    y = "Price"
  )
spx_plot2


### Exercise 2
  
BookGenres <- read.csv("BookGenres.csv")

bookplot <- ggplot(BookGenres, aes(x = Category, y = Price, color = Season)) +
  geom_point(alpha = 0.4) +
  theme_minimal() + 
  theme(axis.text.x = element_text(angle = 30, hjust = 1)) + 
  labs(
    title = "The Price of Fiction Books by Genre and Season",
    x = "Genre", 
    y = "Price ($)"
  )
bookplot
  
### Exercise 3
  
squirrel <- read.csv("squirrel.csv")

squirrelPlot <- ggplot(squirrel, aes(x = Activities, fill = Interactions.with.Humans)) + 
  geom_bar(position = "dodge", stat = "count") + 
  theme_grey() + 
  labs(
    title = "Squirrel Behavior in NYC Parks", 
    x = "Squirrel's Activity during Observation", 
    y = "Count"
  ) + 
  scale_fill_discrete(name = "Interactions with Humans")
squirrelPlot
  
### Exercise 4
big_mac <- read.csv("big_mac.csv")

bigMac <- ggplot(big_mac, aes(x = as.numeric(GDP.Per.Capita), y = dollar_price)) + 
  geom_point() + 
  scale_x_continuous(breaks = c(0, 25000, 50000, 75000, 100000), labels = c("0", "25000", "50000", "75000", "100000")) + 
  geom_smooth(method = "loess", na.rm = TRUE) + 
  labs(
    title = "Countries' GDP per Capita compared to their Big Mac Index", 
    x = "GDP per Capita in Dollars", 
    y = "Dollar Price of a Big Mac"
  ) + 
  theme_minimal()
bigMac

logBigMac <- ggplot(big_mac, aes(x = log(as.numeric(GDP.Per.Capita)), y = dollar_price)) + 
  geom_point() + 
  scale_x_continuous(breaks = c(8, 9, 10, 11, 12), labels = c("8", "9", "10", "11", "12")) + 
  geom_smooth(method = "loess", na.rm = TRUE) + 
  labs(
    title = "Log-transformed GDP Per Capita compared to their Big Mac Index", 
    x = "Log of GDP per Capita", 
    y = "Dollar Price of a Big Mac"
  ) + 
  theme_minimal()
logBigMac
  