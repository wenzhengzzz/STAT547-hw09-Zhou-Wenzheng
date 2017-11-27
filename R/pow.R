#' Generic Power Function
#'
#' This function raises a vector to any power. I'm making it internal,
#' by not \code{export}ing, because I don't want users to use it.
#'
#' @param x Vector to raise to some power.
#' @param a Power to raise \code{x} by.
#' @param plot.it Display a plot of \code{x} vs the output? Use logical.
#'
#' @import ggplot2
#' @return The vector \code{x}, raised to the power of \code{a}.
pow <- function(x, a, plot.it) {
	if (is.character(x)){
		stop('This function expects x as a vector of numbers and logicals.\n',
				 'You have provided an object of characters')
	}
	res <- x^a
	if (plot.it) print(ggplot2::qplot(x, res))
	return(res)
}
