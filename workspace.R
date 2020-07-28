library(tercen)
library(dplyr)


options("tercen.workflowId" = "4d2ce64e3312592700d1d36dab00c018")
options("tercen.stepId"     = "d0697665-1291-4d8e-bd73-4975fac4d786")


ctx <- tercenCtx()

if(inherits(try(ctx$select(".y")), 'try-error')) stop("y axis is missing.")

x_axis <- unlist(ctx$xAxis)

ctx %>%
  select(.x, .y, .ri, .ci) %>% 
  group_by(.ri, .ci) %>%
  mutate(seq = as.numeric(1:length(.x)), x_axis = .x) %>%
  ungroup()%>%
  select(seq) %>%
  ctx$addNamespace() %>%
  ctx$save()


