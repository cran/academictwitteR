## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(academictwitteR)

## ---- eval=F------------------------------------------------------------------
#  
#  tweets <-
#    get_all_tweets(
#      "#BLM OR #BlackLivesMatter",
#      "2020-01-01T00:00:00Z",
#      "2020-01-05T00:00:00Z",
#      bearer_token,
#      file = "blmtweets"
#    )
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

## ---- eval=FALSE--------------------------------------------------------------
#  
#  tweets <- bind_tweet_jsons(data_path = "data/")
#  

## ---- eval=FALSE--------------------------------------------------------------
#  
#  users <- bind_user_jsons(data_path = "data/")
#  

