# Munge Functions Tests

context("Munge tests")

## test variable exist
expect_true(exists("enrolments"))
expect_true(exists("step_activity"))

## test variable type
expect_true(is.data.frame(enrolments))
expect_true(is.data.frame(step_activity))

## test dimension
expect_equal(dim(enrolments)[1], 37296)
expect_equal(dim(enrolments)[2], 18)