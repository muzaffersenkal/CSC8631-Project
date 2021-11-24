## This file includes feature engineering steps

# Step Activity

## Is step  completed?
run_1.step.activity <- run_1.step.activity %>% mutate(completed = last_completed_at != "")
run_2.step.activity <- run_2.step.activity %>% mutate(completed = last_completed_at != "")
run_3.step.activity <- run_3.step.activity %>% mutate(completed = last_completed_at != "")
run_4.step.activity <- run_4.step.activity %>% mutate(completed = last_completed_at != "")
run_5.step.activity <- run_5.step.activity %>% mutate(completed = last_completed_at != "")
run_6.step.activity <- run_6.step.activity %>% mutate(completed = last_completed_at != "")
run_7.step.activity <- run_7.step.activity %>% mutate(completed = last_completed_at != "")


## is Unenrolled
run_1.enrolments <- run_1.enrolments %>% mutate(is_unenrolled= ifelse(unenrolled_at == "", FALSE, TRUE))
run_2.enrolments <- run_2.enrolments %>% mutate(is_unenrolled= ifelse(unenrolled_at == "", FALSE, TRUE))
run_3.enrolments <- run_3.enrolments %>% mutate(is_unenrolled= ifelse(unenrolled_at == "", FALSE, TRUE))
run_4.enrolments <- run_4.enrolments %>% mutate(is_unenrolled= ifelse(unenrolled_at == "", FALSE, TRUE))
run_5.enrolments <- run_5.enrolments %>% mutate(is_unenrolled= ifelse(unenrolled_at == "", FALSE, TRUE))
run_6.enrolments <- run_6.enrolments %>% mutate(is_unenrolled= ifelse(unenrolled_at == "", FALSE, TRUE))
run_7.enrolments <- run_7.enrolments %>% mutate(is_unenrolled= ifelse(unenrolled_at == "", FALSE, TRUE))

