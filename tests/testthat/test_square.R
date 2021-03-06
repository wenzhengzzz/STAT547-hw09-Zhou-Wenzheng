context("Squaring non-numerics")

test_that("At least numeric values work.", {
	num_vec <- c(0, -4.6, 3.4)
	expect_identical(square(num_vec), num_vec^2)
})

test_that("numeric 0 work.", {
	expect_identical(square(numeric(0)), numeric(0))
})

test_that("Logicals automatically convert to numeric.", {
	logic_vec <- c(TRUE, TRUE, FALSE)
	expect_identical(square(logic_vec), logic_vec^2)
})

#expect errors
test_that("characters will return errors.", {
	string_vec <- c("a","b")
	expect_error(square(string_vec))
})
