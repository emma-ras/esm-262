# ESM 262 Looping Lecture May 7, 2026
# Emma Rasmussen 
library(tidyverse)
# simple example - use a loop to sum the numbers from 1 to 5
# a = 0+1+2+3+4+5
a=0
for (i in 1:5) {  # variable in sequence, curly brackets enclose repeating code
  a = a+i
}
a

# if you want to keep track of a for each iteration
# start with a data structure to hold the results - 
# there will be 5 iterations, so a vector of length 5
# initialize to 0 

av = rep(x=0, times=5)

# now we can fill in the vector with the sum at each iteration
# we can use the counter (i) to access the correct element of the vector
# note that we have to treat the first iteration differently because we don't have a previous value to add to

for (i in 1:5) {
  if (i==1) { # gives instruction of what iteration number 
    av[i] = 1 # gives condition for first number in loop to equal 1 
  } else {   # gives condition if not to run the function   
    av[i] = av[i-1]+i
  }
}
av

# practice for loops 
testnumbers = runif(min=0, max=20, n=100) # generates random numbers from uniform distribution

testnumbers = runif(min=0, max=20, n=100) # n equals number of values to generate, min lower and max upper bounds


total = 0
nvalues = 100
for (i in 1:nvalues) {
  total = testnumbers[i]+total
}
total/nvalues

mean(testnumbers)

# lets say we wanted to look at income minus expenses for net income
# create some data for an example

income = runif(min=1000, max=5000, n=10) # generate fake practice data
income

expenses = rnorm(mean=1500, sd=500, n=10) 
expenses

# it is possible that this approach could generate negative expenses
expenses = ifelse(expenses < 0, 0, expenses)

# lets make this a data frame for organization
account = data.frame(income=income, expenses=expenses)
# lets add a year
account$year = seq(from=2000, length.out=nrow(account))

# now compute net income - we could do this with a loop but R is designed to do this without loops
# normally we can just do
account = account %>% mutate(net = income-expenses)
head(account)

# it is possible that this approach could generate negative expenses
expenses = ifelse(expenses < 0, 0, expenses)

# lets make this a data frame for organization
account = data.frame(income=income, expenses=expenses)
# lets add a year
account$year = seq(from=2000, length.out=nrow(account))

# now compute net income - we could do this with a loop but R is designed to do this without loops
# normally we can just do
account = account %>% mutate(net = income-expenses)
head(account)

# lets plot
ggplot(account, aes(income, expenses))+geom_point()

# we could have computed net income with a for loop
# lets add a column for our net computed by a loop
# sometimes we use NA to show we haven't computed it yet, so "initialize" as NA

account$netloop=NA
account

# note that I can use any variable I want as a counter -
# notice how I'm now using n to access each row of the data frame
for (n in 1:10) {
  account$netloop[n] = account$income[n]-account$expenses[n]
}

# as expected net and netloop are the same :)
head(account)

# note: we treat the first year differently because we don't have carry forward
# initialize our column to zero, start counter (n) at 2 instead of 1
# make the first value equal to the net of first year

account$carryforwardnet = 0
account$carryforwardnet[1]=account$net[1]
# now loop - looking backward one year to get previous years carry forward
for (n in 2:10) {
  account$carryforwardnet[n] = account$net[n]+account$carryforwardnet[n-1]
}

# plot - use color to show current year's contribution as positive or negative
ggplot(account, aes(year, carryforwardnet, fill=net, group=year))+geom_col()+
  scale_fill_gradient(low="red", high="black")

# speed limit 
speedthresh = 120
# create some sample speeds 
speeds = runif(min=0, max=150, n=300)

nthresh = 0
for ( i  in 1:length(speeds)) {
  if(speeds[i] > speedthresh)
    nthresh = nthresh + 1
}

nthresh

# Create a for loop
speeds = runif(min=0, max=50, n=300)
hunt = 35
social = 5
num_hunt = 0 # intialize for value
num_social = 0 
for (i in 1:length(speeds)) {
  num_hunt = num_hunt + ifelse(speeds[i] >= hunt, 1, 0)
  num_social = num_social + ifelse(speeds[i] < social, 1, 0)
}

num_hunt
num_social

# other speeds are traveling is the remainder 
num_traveling 
