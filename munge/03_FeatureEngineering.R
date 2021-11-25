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



## Continents
names(external.continents)[1] <- "country_name"

run_1.enrolments <- merge(x=run_1.enrolments, y=external.continents[,c("region","sub.region","country_name","alpha.2")],
                          by.x="detected_country", by.y="alpha.2", all.x = TRUE, with = FALSE)
run_2.enrolments <- merge(x=run_2.enrolments, y=external.continents[,c("region","sub.region","country_name","alpha.2")],
                          by.x="detected_country", by.y="alpha.2", all.x = TRUE, with = FALSE)

run_3.enrolments <- merge(x=run_3.enrolments, y=external.continents[,c("region","sub.region","country_name","alpha.2")],
                          by.x="detected_country", by.y="alpha.2", all.x = TRUE, with = FALSE)

run_4.enrolments <- merge(x=run_4.enrolments, y=external.continents[,c("region","sub.region","country_name","alpha.2")],
                          by.x="detected_country", by.y="alpha.2", all.x = TRUE,with = FALSE)

run_5.enrolments <- merge(x=run_5.enrolments, y=external.continents[,c("region","sub.region","country_name","alpha.2")],
                          by.x="detected_country", by.y="alpha.2", all.x = TRUE, with = FALSE)

run_6.enrolments <- merge(x=run_6.enrolments, y=external.continents[,c("region","sub.region","country_name","alpha.2")],
                          by.x="detected_country", by.y="alpha.2", all.x = TRUE, with = FALSE)

run_7.enrolments <- merge(x=run_7.enrolments, y=external.continents[,c("region","sub.region","country_name","alpha.2")],
                          by.x="detected_country", by.y="alpha.2", all.x = TRUE, with = FALSE)



## Find difference time start and end


run_1.step.activity$diff_second <- unlist(run_1.step.activity %>% 
                                            mutate(last_completed_at_2 = ifelse(last_completed_at == "", first_visited_at,last_completed_at ) ) %>% 
                                            mutate(diff_second =  as.numeric(as.POSIXct(last_completed_at_2))- as.numeric(as.POSIXct(first_visited_at))) %>% 
                                            select(diff_second))

run_2.step.activity$diff_second <- unlist(run_2.step.activity %>% 
                                            mutate(last_completed_at_2 = ifelse(last_completed_at == "", first_visited_at,last_completed_at ) ) %>% 
                                            mutate(diff_second =  as.numeric(as.POSIXct(last_completed_at_2))- as.numeric(as.POSIXct(first_visited_at))) %>% 
                                            select(diff_second))

run_3.step.activity$diff_second <- unlist(run_3.step.activity %>% 
                                            mutate(last_completed_at_2 = ifelse(last_completed_at == "", first_visited_at,last_completed_at ) ) %>% 
                                            mutate(diff_second =  as.numeric(as.POSIXct(last_completed_at_2))- as.numeric(as.POSIXct(first_visited_at))) %>% 
                                            select(diff_second))

run_4.step.activity$diff_second <- unlist(run_4.step.activity %>% 
                                            mutate(last_completed_at_2 = ifelse(last_completed_at == "", first_visited_at,last_completed_at ) ) %>% 
                                            mutate(diff_second =  as.numeric(as.POSIXct(last_completed_at_2))- as.numeric(as.POSIXct(first_visited_at))) %>% 
                                            select(diff_second))

run_5.step.activity$diff_second <- unlist(run_5.step.activity %>% 
                                            mutate(last_completed_at_2 = ifelse(last_completed_at == "", first_visited_at,last_completed_at ) ) %>% 
                                            mutate(diff_second =  as.numeric(as.POSIXct(last_completed_at_2))- as.numeric(as.POSIXct(first_visited_at))) %>% 
                                            select(diff_second))

run_6.step.activity$diff_second <- unlist(run_6.step.activity %>% 
                                            mutate(last_completed_at_2 = ifelse(last_completed_at == "", first_visited_at,last_completed_at ) ) %>% 
                                            mutate(diff_second =  as.numeric(as.POSIXct(last_completed_at_2))- as.numeric(as.POSIXct(first_visited_at))) %>% 
                                            select(diff_second))


run_7.step.activity$diff_second <- unlist(run_7.step.activity %>% 
                                            mutate(last_completed_at_2 = ifelse(last_completed_at == "", first_visited_at,last_completed_at ) ) %>% 
                                            mutate(diff_second =  as.numeric(as.POSIXct(last_completed_at_2))- as.numeric(as.POSIXct(first_visited_at))) %>% 
                                            select(diff_second))

## Elapsed Time
run_1.step.activity <- run_1.step.activity %>%  mutate(elapsed_time = helper.round_off(diff_second / 60)) 
run_2.step.activity <- run_2.step.activity %>%  mutate(elapsed_time = helper.round_off(diff_second / 60)) 
run_3.step.activity <- run_3.step.activity %>%  mutate(elapsed_time = helper.round_off(diff_second / 60)) 
run_4.step.activity <- run_4.step.activity %>%  mutate(elapsed_time = helper.round_off(diff_second / 60)) 
run_5.step.activity <- run_5.step.activity %>%  mutate(elapsed_time = helper.round_off(diff_second / 60)) 
run_6.step.activity <- run_6.step.activity %>%  mutate(elapsed_time = helper.round_off(diff_second / 60)) 
run_7.step.activity <- run_7.step.activity %>%  mutate(elapsed_time = helper.round_off(diff_second / 60)) 




# Assign course metadata

course.steps_id <- c("1.1", "1.2", "1.3", "1.4", "1.5", "1.6", "1.7", "1.8",
                     "1.9","1.10", "1.11", "1.12", "1.13", "1.14", "1.15",
                     "1.16","1.17", "1.18", "1.19", "2.1","2.2", "2.3","2.4",
                     "2.5","2.6", "2.7", "2.8", "2.9", "2.10","2.11","2.12",
                     "2.13","2.14", "2.15","2.16","2.17", "2.18", "2.19", "2.20",
                     "2.21","2.22", "2.23","3.1", "3.2","3.3", "3.4","3.5","3.6",
                     "3.7","3.8","3.9","3.10","3.11","3.12", "3.13", "3.14", "3.15",
                     "3.16","3.17","3.18", "3.19", "3.20","3.21")


course.step_types <- c("VIDEO", "DISCUSSION", "ARTICLE", "EXERCISE", "VIDEO", "ARTICLE","ARTICLE", "QUIZ",
                       "ARTICLE","DISCUSSION", "DISCUSSION", "ARTICLE", "ARTICLE", "VIDEO", "ARTICLE",
                       "ARTICLE", "VIDEO", "ARTICLE", "VIDEO", "VIDEO", "ARTICLE", "EXERCISE", "VIDEO",
                       "ARTICLE","DISCUSSION","ARTICLE","QUIZ","ARTICLE","ARTICLE","VIDEO","ARTICLE",
                       "ARTICLE","ARTICLE","ARTICLE", "ARTICLE","VIDEO","ARTICLE","ARTICLE", "QUIZ",
                       "ARTICLE", "ARTICLE","DISCUSSION","VIDEO","VIDEO","EXERCISE","DISCUSSION","ARTICLE",
                       "ARTICLE","ARTICLE","ARTICLE","ARTICLE","ARTICLE","QUIZ","DISCUSSION","ARTICLE",
                       "VIDEO","VIDEO","DISCUSSION", "ARTICLE", "TEST", "DISCUSSION", "ARTICLE","ARTICLE")


course.step_name <- c("Welcome to the course",
                      "Why are you here?",
                      "What is privacy?",
                      "How concerned are you about privacy?",
                      "Privacy online and offline",
                      "What value do businesses get from our personal data?",
                      "Personal risks arising from privacy breaches in business",
                      "How do privacy laws govern how companies do business?",
                      "Find out about your digital footprint",
                      "Comparing your online profile with your privacy preferences",
                      "Finding and understanding privacy policies",
                      "How privacy needs can change over time",
                      "Exploring private browsing",
                      "Why would anyone want your data?",
                      "Cumulative effects",
                      "Usable privacy: a research perspective",
                      "Preserving privacy in cloud storage: privacy by design",
                      "Recapping our exploration of privacy",
                      "Staying safe online: personal perspectives",
                      "Welcome to Week 2: payment security",
                      "How payments have changed",
                      "Your chance to explore payment changes",
                      "The evolving arms race of payment security",
                      "Usability vs security: who pays for fraud?",
                      "What is it like in your country?",
                      "Risk and reward",
                      "What is the true cost of financial fraud in the UK?",
                      "Many fingers in the pie",
                      "The online retailer",
                      "Exploring vulnerabilities in online payments",
                      "Motivations, methods and practical attacks by cybercriminals",
                      "Black markets: the sale and purchase of stolen credit card details online",
                      "What methods and targets are attractive to crinals?",
                      "Regaining and advantage - the role of research",
                      "Is your mobile phone spying on you?",
                      "The million dollar contactless payment",
                      "Bitcoin: a cryptocurrency",
                      "Expert advice on protecting your money",
                      "Phishing",
                      "Staying safe with online payments",
                      "Auditing your Mobile App permissions",
                      "Over to you - what are your ideas?",
                      "Welcome to Week 3: security in the future home",
                      "Devices in the future home",
                      "How many connected devices do you own?",
                      "Issıes raised by connected devices?",
                      "Case study 1: the ordering stick",
                      "Case study 2: the door",
                      "Case study 3: Co-wheels",
                      "Staying in control",
                      "Crime",
                      "STRIDE",
                      "Apply the STRIDE model to the future home",
                      "How are these new threats different from the old ones?",
                      "Security privacy tradeoff",
                      "Exploring security: biometric authentication",
                      "Exploring security: the Access Control Live Lab",
                      "Is security a matter of trade-off?",
                      "Zero-day vulnerabilities and bounty programs",
                      "Test your understanding",
                      "What will you do differently, or do next?",
                      "Wrapping up",
                      "Glossary and references")




run_2.step.metadata <- data.frame(step_id=course.steps_id, step_name=course.step_name, step_type=course.step_types)
run_3.step.metadata <- data.frame(step_id=course.steps_id[1:62], step_name=course.step_name[1:62], step_type=course.step_types[1:62])
run_4.step.metadata <- data.frame(step_id=course.steps_id[1:62], step_name=course.step_name[1:62], step_type=course.step_types[1:62])
run_5.step.metadata <- data.frame(step_id=course.steps_id[1:62], step_name=course.step_name[1:62], step_type=course.step_types[1:62])
run_6.step.metadata <- data.frame(step_id=course.steps_id[1:62], step_name=course.step_name[1:62], step_type=course.step_types[1:62])
run_7.step.metadata <- data.frame(step_id=course.steps_id[1:62], step_name=course.step_name[1:62], step_type=course.step_types[1:62])


