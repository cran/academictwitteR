## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval =FALSE-------------------------------------------------------------
#  library(academictwitteR)

## ---- echo =FALSE-------------------------------------------------------------
library(devtools)
load_all()

## ---- eval =FALSE-------------------------------------------------------------
#  get_bearer()

## ---- echo =FALSE-------------------------------------------------------------
bearer_example <- "AAAAAAAAAAAAAAAAAAAAAPw%2BJQEAAAAAq5Ot8BBYyYlAqT9nLMuVuR1jI5fA%3DqG9HTHISISNOTAREALTOKEN"
bearer_example

## ---- eval = F----------------------------------------------------------------
#  
#  tweets <-
#    get_all_tweets(
#      query = "happy",
#      start_tweets = "2019-12-31T10:00:00Z",
#      end_tweets = "2020-01-01T10:00:00Z",
#      n = 10000
#    )
#  

## ---- eval = F----------------------------------------------------------------
#  
#  tweets <-
#    get_all_tweets(
#      query = "happy",
#      start_tweets = "2019-12-31T10:00:00Z",
#      end_tweets = "2020-01-01T10:00:00Z",
#      country = "US",
#      lang = "en"
#    )
#  

## ---- eval = F----------------------------------------------------------------
#  
#  tweets <-
#    get_all_tweets(
#      query = "happy",
#      start_tweets = "2019-12-31T10:00:00Z",
#      end_tweets = "2020-01-01T10:00:00Z",
#      country = "US",
#      lang = "en",
#      has_images = TRUE,
#      has_hashtags = TRUE,
#      has_mentions = TRUE
#    )
#  

## ---- eval=F------------------------------------------------------------------
#  tweets <-
#    get_all_tweets(
#      query = "happy",
#      start_tweets = "2019-12-31T10:00:00Z",
#      end_tweets = "2020-01-01T10:00:00Z",
#      country = "US",
#      place = "seattle",
#      lang = "en",
#      has_images = TRUE,
#      has_hashtags = TRUE,
#      has_mentions = TRUE
#    )
#  

## ---- eval=F------------------------------------------------------------------
#  
#  tweets <-
#    get_all_tweets(
#      query = "happy",
#      start_tweets = "2019-12-31T10:00:00Z",
#      end_tweets = "2020-01-01T10:00:00Z",
#      country = "US",
#      place = "seattle",
#      lang = "en",
#      has_images = TRUE,
#      has_hashtags = TRUE,
#      has_mentions = TRUE,
#      bbox = c(-122.375679, 47.563554, -122.266159, 47.643417)
#    )
#  
#  

## ---- eval=F------------------------------------------------------------------
#  
#  tweets <-
#    get_all_tweets(
#      query = "happy",
#      start_tweets = "2019-12-31T10:00:00Z",
#      end_tweets = "2020-01-01T10:00:00Z",
#      country = "US",
#      place = "seattle",
#      lang = "en",
#      point_radius = c(-122.33795253639994, 47.60900846404393, 25)
#    )
#  

## ---- eval = F----------------------------------------------------------------
#  
#  tweets <-
#    get_all_tweets(
#      query = c("happy", "new", "year"),
#      start_tweets = "2019-12-31T10:00:00Z",
#      end_tweets = "2020-01-01T10:00:00Z"
#    )
#  

## ---- eval = F----------------------------------------------------------------
#  
#  tweets <-
#    get_all_tweets(
#      query = c("#BLM", "#BlackLivesMatter"),
#      start_tweets = "2019-12-31T10:00:00Z",
#      end_tweets = "2020-01-01T10:00:00Z"
#    )
#  

## -----------------------------------------------------------------------------

build_query(
  query = "happy",
  country = "US",
  place = "seattle",
  lang = "en",
  point_radius = c(-122.33795253639994, 47.60900846404393, 25)
)


## ---- eval = F----------------------------------------------------------------
#  
#  tweets <-
#    get_all_tweets(
#      query = c("dog cat"),
#      start_tweets = "2019-12-31T10:00:00Z",
#      end_tweets = "2020-01-01T10:00:00Z"
#    )
#  

## ---- eval = F----------------------------------------------------------------
#  
#  tweets <-
#    get_all_tweets(
#      users = c("cbarrie", "jack"),
#      start_tweets = "2021-01-01T00:00:00Z",
#      end_tweets = "2021-06-01T00:00:00Z",
#      n = 1000
#    )
#  

## ---- eval = F----------------------------------------------------------------
#  
#  get_all_tweets(
#    query = "twitter",
#    users = c("cbarrie", "jack"),
#    start_tweets = "2021-01-01T00:00:00Z",
#    end_tweets = "2021-06-01T00:00:00Z",
#    n = 1000
#  )
#  

