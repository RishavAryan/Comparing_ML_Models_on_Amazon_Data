library(ggplot2)
library(dplyr)

rish = read.csv("C:/Users/Jay Lakshmi/Downloads/Amazon_Unlocked_Mobile.csv")

set.seed(123) 
rish_aryn <- rish[sample(nrow(rish), 100), ]

clean <- na.omit(rish_aryn[c('Rating', 'Review.Votes', 'Brand.Name')])

ggplot(clean, aes(x = Rating, y = Review.Votes, color = Brand.Name)) +
  geom_point() +
  labs(x = 'Rating', y = 'Review Votes', title = ' Rating vs Review Votes') +
  theme_minimal()

ggplot(clean, aes(x = Rating, y = Review.Votes, color = Brand.Name)) +
  geom_point() +
  geom_smooth(method = 'lm', se = FALSE) +
  labs(x = 'Rating', y = 'Review Votes', title = ' Rating vs Review Votes ') +
  theme_minimal()

corr <- cor(clean$Price, clean$Rating)
print(paste("Corr b/w Price and Rating:", corr))

ggplot(rish, aes(x = Price, y = Rating)) +
  geom_point() +
  labs(x = "Price", y = "Rating", title = " Price and Rating")
