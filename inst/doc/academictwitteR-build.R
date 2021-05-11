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

## ---- eval = F----------------------------------------------------------------
#  
#  bearer_token <- "" # Insert bearer token
#  
#  users <- c("TwitterDev", "jack")
#  tweets <-
#    get_user_tweets(users,
#                    "2010-01-01T00:00:00Z",
#                    "2020-01-01T00:00:00Z",
#                    bearer_token)
#  

## ---- eval = F----------------------------------------------------------------
#  
#  bearer_token <- "" # Insert bearer token
#  
#  tweets <-
#    get_all_tweets("apples OR oranges",
#                   "2020-01-01T00:00:00Z",
#                   "2020-01-05T00:00:00Z",
#                   bearer_token)
#  

## ---- eval = F----------------------------------------------------------------
#  
#  bearer_token <- "" # Insert bearer token
#  
#  tweets <-
#    get_all_tweets(
#      "#BLM OR #BlackLivesMatter",
#      "2020-01-01T00:00:00Z",
#      "2020-01-05T00:00:00Z",
#      bearer_token
#    )
#  

## ---- eval = F----------------------------------------------------------------
#  
#  bearer_token <- "" # Insert bearer token
#  
#  htagquery <- c("#BLM", "#BlackLivesMatter", "#GeorgeFloyd")
#  
#  tweets <-
#    get_all_tweets(
#      htagquery,
#      "2020-01-01T00:00:00Z",
#      "2020-01-05T00:00:00Z",
#      bearer_token
#    )
#  

## ---- eval = F----------------------------------------------------------------
#  
#  bearer_token <- "" # Insert bearer token
#  
#  tweets <-
#    get_all_tweets("apples oranges",
#                   "2020-01-01T00:00:00Z",
#                   "2020-01-05T00:00:00Z",
#                   bearer_token)
#  

## ---- eval=F------------------------------------------------------------------
#  
#  tweets <-
#    get_all_tweets(
#      "#BLM OR #BlackLivesMatter",
#      "2020-01-01T00:00:00Z",
#      "2020-01-05T00:00:00Z",
#      bearer_token,
#      data_path = "data/"
#      bind_tweets = FALSE
#    )
#  

## ---- eval=F------------------------------------------------------------------
#  
#  tweets <-
#    get_all_tweets(
#      "#BLM OR #BlackLivesMatter place_country:US lang:en",
#      "2020-01-01T00:00:00Z",
#      "2020-01-05T00:00:00Z",
#      bearer_token,
#      data_path = "data/",
#      bind_tweets = FALSE
#    )
#  

## ---- eval=F------------------------------------------------------------------
#  
#  tweets <-
#    get_all_tweets(
#      "#BLM OR #BlackLivesMatter place_country:US lang:en -is:retweet has:images",
#      "2020-01-01T00:00:00Z",
#      "2020-01-05T00:00:00Z",
#      bearer_token,
#      data_path = "data/",
#      bind_tweets = FALSE
#    )
#  

## ---- eval=F------------------------------------------------------------------
#  
#  tweets <-
#    get_all_tweets(
#      "#BLM OR #BlackLivesMatter place_country:US place:seattle lang:en -is:retweet has:images",
#      "2020-01-01T00:00:00Z",
#      "2020-01-05T00:00:00Z",
#      bearer_token,
#      data_path = "data/",
#      bind_tweets = FALSE
#    )
#  

## ---- eval=F------------------------------------------------------------------
#  
#  tweets <-
#    get_all_tweets(
#      "#BLM OR #BlackLivesMatter bounding_box:[-122.375679 47.563554 -122.266159 47.643417] lang:en -is:retweet has:images",
#      "2020-01-01T00:00:00Z",
#      "2020-01-05T00:00:00Z",
#      bearer_token,
#      data_path = "data/",
#      bind_tweets = FALSE
#    )
#  

## -----------------------------------------------------------------------------

query <- build_query(query = "#BLM", is_retweet = FALSE, place = "London", remove_promoted = TRUE, has_links = TRUE, has_videos = TRUE, lang = "en")

query
  

## -----------------------------------------------------------------------------

query <-
  build_query(
    query = "#BLM",
    point_radius = c(-0.131969125179604, 51.50847878040284, 25)
  )

query
  

## ---- eval=F------------------------------------------------------------------
#  
#  query <- build_query(query = "#BLM", geo_query = TRUE)
#  

## ---- echo=F------------------------------------------------------------------
query <-
  "#BLM -is:retweet point_radius:[-0.131969125179604 51.50847878040284 25mi]"


## -----------------------------------------------------------------------------
query

## -----------------------------------------------------------------------------

htagquery <- c("#BLM", "#BlackLivesMatter", "#GeorgeFloyd")

query <-
  build_query(
    query = htagquery,
    is_retweet = FALSE,
    place = "London",
    remove_promoted = TRUE,
    has_links = TRUE,
    has_videos = TRUE,
    lang = "en"
  )

query
  

## -----------------------------------------------------------------------------

users <- c("cbarrie", "justin_ct_ho")

users_params <-
  build_user_query(users,
                   is_retweet = F,
                   has_media = T,
                   lang = "en")

users_params


## ---- eval=FALSE--------------------------------------------------------------
#  tweets <-
#    get_user_tweets(users_params,
#                    "2018-01-01T00:00:00Z",
#                    "2020-04-05T00:00:00Z",
#                    bearer_token)

