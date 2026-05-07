# ESM 262 Looping Lecture May 7, 2026
# Emma Rasmussen 

library(ggplot2)
sprintf("We found %d %s %3.1f miles from shore", 4,"Otters", 18.95632342)

# %s replace with a string
# %d replace with an integer 
# %f replace with a real value
# %4.1f replace with a real value with a decimal 
# \n add a line return

# # create vector of possible flowers 
possible.flowers = c("tulip","rose","lily","iris","marigold","daisy")

# we can use sample to simulate a random recording of purchases at the market, lets create data that had 300 flower purchases

purchases = sample(possible.flowers, size=20, replace=T)
purchases= as.factor(purchases)

# make it a data frame for plotting later
# maybe we want to add more information about the purchases later - like price, time of day, etc. - so make column name flower
purchases  = data.frame(flower=purchases) 

# to quickly get information of flower purchases 
summary(purchases$flower)

# sprintf creates a string %s mean use what ever is after the , to fill in a string
plottitle=sprintf("The most frequently bought flower was %s\n There were %d bought", names(which.max(summary(purchases$flower))), max(summary(purchases$flower)))

# now plot
ggplot(purchases, aes(flower, fill=flower))+geom_histogram(stat="count")+labs(title=plottitle)+
  theme(legend.position="none")