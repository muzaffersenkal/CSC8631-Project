# Assign run id to datasets

## Enrolments
run_1.enrolments$run_id <- 1
run_2.enrolments$run_id <- 2
run_3.enrolments$run_id <- 3
run_4.enrolments$run_id <- 4
run_5.enrolments$run_id <- 5
run_6.enrolments$run_id <- 6
run_7.enrolments$run_id <- 7

enrolments <- rbind(run_1.enrolments, run_2.enrolments, run_3.enrolments, 
                    run_4.enrolments,run_5.enrolments, run_6.enrolments,
                    run_7.enrolments)

info(logger,"enrolments files are merged")


## Steps Activity

run_1.step.activity$run_id <- 1
run_2.step.activity$run_id <- 2
run_3.step.activity$run_id <- 3
run_4.step.activity$run_id <- 4
run_5.step.activity$run_id <- 5
run_6.step.activity$run_id <- 6
run_7.step.activity$run_id <- 7

step_activity <- rbind(run_1.step.activity, run_2.step.activity, run_3.step.activity,
                       run_4.step.activity, run_5.step.activity, run_6.step.activity,
                       run_7.step.activity)

info(logger,"steps activity files are merged")




