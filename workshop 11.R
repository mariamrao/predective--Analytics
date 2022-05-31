library(tidytext)
library(widyr)
library(igraph)
user_reviews<-readr::read_tsv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-05-05/user_reviews.tsv')
user_reviews %>% count(user_name, sort = TRUE)
user_reviews %>% head(10) %>% pull(text)

user_reviews %>%
  unnest_tokens(output = word, input = text) %>%
  count(word, sort = TRUE)

stop_words

user_reviews %>%
  unnest_tokens(output = word, input = text) %>%
  anti_join(stop_words, by = "word") %>%
  count(word, sort = TRUE)


word_correlations <- review_words %>%
  semi_join(user_reviews, by = "word") %>%
  pairwise_cor(item = word, feature = user_name) %>%
  filter(correlation >= 0.2)
