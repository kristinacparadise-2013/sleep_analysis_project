library(dplyr)
install.packages("tidyverse")
c <- sleep_clean[!is.na(sleep_clean$total_sleep) & 
             !is.na(sleep_clean$predation_index), 
           c("total_sleep", "predation_index")]
mean(c$total_sleep)
sd(c$total_sleep)
mean(c$predation_index)
sd(c$predation_index)

summary(c)

cor(c$total_sleep, c$predation_index)
library(ggplot2)

ggplot(c, aes(x = factor(total_sleep), y = predation_index)) +
  geom_boxplot() +
  labs(title = "Predation by Total Sleep",
       x = "Total Sleep (hours)",
       y = "Predation (1-minimal 5-most likely") +
  theme_minimal()

ggplot(c, aes(x = total_sleep)) +
  geom_histogram(bins = 15) +
  labs(title = "Distribution of Total Sleep",
       x = "Total Sleep (hours)",
       y = "Frequency") +
  theme_minimal()


ggplot(sleep_clean, aes(x = body_weight, y = total_sleep)) +
  geom_point() +
  labs(title = "Body Weight vs Total Sleep",
       x = "Body Weight (kg)",
       y = "Total Sleep (hours)") +
  theme_minimal()

