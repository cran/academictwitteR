## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(academictwitteR)

## ---- eval = FALSE------------------------------------------------------------
#  get_bearer()

## ---- echo=F------------------------------------------------------------------
dummy_bearer <- "AAAAAAAAAAAAAAAAAAAAAPwXWFFlLLDVC6G0PFo4shkDVg02DwVxGQIVKvhPVE3vdV"
dummy_bearer


## ---- eval=F------------------------------------------------------------------
#  
#  tweets <-
#    get_all_tweets(
#      query = "#BlackLivesMatter",
#      start_tweets = "2020-01-01T00:00:00Z",
#      end_tweets = "2020-01-05T00:00:00Z",
#      file = "blmtweets"
#    )
#  

## ---- eval=F------------------------------------------------------------------
#  
#  tweets <-
#    get_all_tweets(
#      query = "#BlackLivesMatter",
#      start_tweets = "2020-01-01T00:00:00Z",
#      end_tweets = "2020-01-05T00:00:00Z",
#      bearer_token = "AAAAAAAAAAAAAAAAAAAAAPwXWFFlLLDVC6G0Pg02DwVxGQIVKTHISISNOTAREALTOKEN",
#      file = "blmtweets"
#    )
#  

## ---- eval=F------------------------------------------------------------------
#  
#  tweets <-
#    get_all_tweets(
#      query = "#BlackLivesMatter",
#      start_tweets = "2015-01-01T00:00:00Z",
#      end_tweets = "2020-01-05T00:00:00Z",
#      data_path = "data/",
#      bind_tweets = FALSE,
#      n= 1000000
#    )
#  

## ---- eval=FALSE--------------------------------------------------------------
#  tweets <- bind_tweets(data_path = "data/")

## ---- eval=FALSE--------------------------------------------------------------
#  users <- bind_tweets(data_path = "data/", user = TRUE)

