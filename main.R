library(tercen)
library(dplyr)

ctx <- tercenCtx()

if(inherits(try(ctx$select(".y")), 'try-error')) stop("y axis is missing.")
if(inherits(try(ctx$select(".x")), 'try-error')) stop("x axis is missing.")

ctx %>%
  select(.x, .y, .ri, .ci) %>% 
  group_by(.ri, .ci) %>%
  mutate(seq = as.numeric(1:length(.x))) %>%
  ungroup()%>%
  select(seq) %>%
  ctx$addNamespace() %>%
  ctx$save()