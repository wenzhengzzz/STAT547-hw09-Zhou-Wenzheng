context("Box-Cox non-numerics")

#expect identical
test_that("At least numeric values work.", {
	num_vec <- c(0, 1.0, -1)
	expect_identical(BoxCox(num_vec,1), num_vec-1)
})

#expect identical
test_that("numeric 0 work.", {
	expect_identical(BoxCox(numeric(0),1), numeric(0))
})

#expect identical
test_that("Logicals automatically convert to numeric.", {
	logic_vec <- c(TRUE, TRUE, FALSE)
	expect_identical(BoxCox(logic_vec,1),logic_vec-1)
})

#expect error
test_that("strings return errors.", {
	string_vec <- c("a","b")
	expect_error(BoxCox(string_vec,1))
})
