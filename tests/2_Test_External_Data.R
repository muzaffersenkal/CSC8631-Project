
context("External Data tests")

## test step activity
expect_true(exists("external.continents"))
expect_true(is.data.frame(external.continents))
expect_equal(nrow(external.continents), 249)



