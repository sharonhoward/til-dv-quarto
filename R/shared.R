library(readxl)
library(janitor)
library(glue)

library(tidytext)
library(tidyverse)

library(historydata)
library(mindseyedata)


set.seed(250611)
judges100 <-
  historydata::judges_people |> 
  slice_sample(n=100)  |>
  mutate(persname = paste(name_first, name_last)) |>
  # make a non-numerical version of judge_id (mainly for tei xml:id)
  mutate(id = paste0("judge_", judge_id))

judges100_appts <-
  historydata::judges_appointments |>
  semi_join(judges100, by="judge_id")



