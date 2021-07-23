## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval=FALSE--------------------------------------------------------------
#  library(connectwidgets)
#  library(dplyr)
#  library(purrr)
#  library(htmltools)
#  
#  client <- connect()
#  all_content <- client %>% content()
#  some_content <- slice_sample(all_content, prop = .1)
#  
#  tagList(
#    rsc_cols(rsc_search(some_content), rsc_filter(some_content)),
#    rsc_table(some_content)
#  )

## ---- eval=FALSE--------------------------------------------------------------
#  some_content_xfilter <- crosstalk::SharedData$new(
#    some_content,
#    key = ~ guid,
#    group = "xfilter"
#    )
#  
#  rsc_content_shared <-
#    some_content %>%
#    group_nest(owner_username, .key = "content_df", keep = TRUE)
#  
#  div(
#    h3("Grouped Grids by Owner", class = "text-center"),
#    rsc_cols(rsc_search(some_content_xfilter), rsc_filter(some_content_xfilter)),
#    purrr::pmap(
#      rsc_content_shared,
#      {
#        ~ tagList(
#          h4(..1),
#          rsc_grid(crosstalk::SharedData$new(..2, key = ~ guid, group = "xfilter"))
#        )
#      }
#    )
#  )

