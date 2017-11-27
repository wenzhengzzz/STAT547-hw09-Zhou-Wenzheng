context("Box-Cox inverse non-numerics")

#expect identical
test_that("At least numeric values work.", {
	num_vec <- c(0, 1.0, -1)
	expect_identical(BoxCox.inv(num_vec,1), num_vec+1)
})

#expect identical
test_that("numeric 0 work.", {
	expect_identical(BoxCox.inv(numeric(0),1), numeric(0))
})

#expect identical
test_that("Logicals automatically convert to numeric.", {
	logic_vec <- c(TRUE, TRUE, FALSE)
	expect_identical(BoxCox.inv(logic_vec,1),logic_vec+1)
})

#expect error
test_that("strings return errors.", {
	string_vec <- c("a","b")
	expect_error(BoxCox.inv(string_vec,1))
})
