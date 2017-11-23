context("Testing numeric0")

test_that("numeric 0 work.", {
	expect_identical(square(numeric(0)), numeric(0))
	expect_identical(cube(numeric(0)), numeric(0))
})
