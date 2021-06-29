## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
require(academictwitteR)
require(tibble)
my_query <- build_query(c("#ichbinhanna", "#ichwarhanna"), place = "Berlin")
my_query

## ---- eval = F----------------------------------------------------------------
#  get_all_tweets(
#    query = my_query,
#    start_tweets = "2021-06-01T00:00:00Z",
#    end_tweets = "2021-06-20T00:00:00Z",
#    n = Inf,
#    data_path = "tweetdata",
#    bind_tweets = FALSE
#  )

## ---- eval = FALSE------------------------------------------------------------
#  bind_tweets(data_path = "tweetdata") %>% as_tibble

## ---- echo = FALSE------------------------------------------------------------
bind_tweets(system.file("extdata", "tweetdata", package = "academictwitteR")) %>% as_tibble

## ---- eval = FALSE------------------------------------------------------------
#  bind_tweets(data_path = "tweetdata", output_format = "raw") %>% names

## ---- echo = FALSE------------------------------------------------------------
bind_tweets(system.file("extdata", "tweetdata", package = "academictwitteR"), output_format = "raw") %>% names

## ---- eval = FALSE------------------------------------------------------------
#  bind_tweets(data_path = "tweetdata", output_format = "tidy")

## ---- echo = FALSE------------------------------------------------------------
bind_tweets(system.file("extdata", "tweetdata", package = "academictwitteR"), output_format = "tidy")

