library(dplyr)


# Fix Step Name Step Activity
## In step activity data, step number value is misleading. For example: step looks 1.1 when step is 1.10


run_1.step.activity <-  run_1.step.activity %>% mutate(step = ifelse(step_number == 10 | step_number  == 20 , format(step,nsmall=2), step))
run_2.step.activity <- run_2.step.activity %>% mutate( step = ifelse(step_number == 10 | step_number  == 20 , format(step,nsmall=2), step))
run_3.step.activity <- run_3.step.activity %>% mutate(step = ifelse(step_number == 10 | step_number  == 20 , format(step,nsmall=2), step))
run_4.step.activity <- run_4.step.activity %>% mutate(step = ifelse(step_number == 10 | step_number  == 20 , format(step,nsmall=2), step))
run_5.step.activity <- run_5.step.activity %>% mutate(step = ifelse(step_number == 10 | step_number  == 20 , format(step,nsmall=2), step))
run_6.step.activity <- run_6.step.activity %>% mutate(step = ifelse(step_number == 10 | step_number  == 20 , format(step,nsmall=2), step))
run_7.step.activity <- run_7.step.activity %>% mutate(step = ifelse(step_number == 10 | step_number  == 20 , format(step,nsmall=2), step))



