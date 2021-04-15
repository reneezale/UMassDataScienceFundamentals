install.packages("tidyverse")
library(tidyverse)
mpg
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
################plotted engine size (displ) vs. fuel efficiency
###ggplot(data = <DATA>) + 
  ###<GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))
############reusable code for making ggplot maps
ggplot(data = mpg)
?mpg
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = hwy, y = cyl))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = cyl, y = hwy))
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))
###########plotted the mpg vs. engine size, color coded by type of car
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))
#########plotted the same thing but with transparency instead of color
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))
#########plotted with shapes but R didn't like that there were more than 6
?geom_point
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, stroke = class))
?mpg
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = year, alpha = year))
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = year, stroke = year))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)
###############facet_wrap creates a new chart for each part of a discreet 
###############variable aka. one small chart for each type of car
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(drv ~ cyl)
###########even more complicated - adds additional cuts to the charts 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(. ~ cyl)
##########simplifies, lets you cut by just one extra instead of two
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))
?facet_wra
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 4)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(drv ~ cyl)
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))
############geom_smooth makes a beautiful smooth line thing


scores <- c(14,13,12,15,16,14,15,10,8,12)
scores
#grades variable is calculated by dividing the scores by 17
grades <- scores/17
grades
grades <- grades*100
grades
new_scores <- c(13,12,11,9,12,13,15,12,6,14)
new_scores
new_grades <- new_scores/15
new_grades
new_grades <- new_grades*100
new_grades
final_grades <- (new_grades+grades)/2
final_grades
final_grades_weighted <- final_grades+5
(21+19)/2 + 1 > 20
summary(new_grades)
new_grades
final_grades
final_grades_weighted
