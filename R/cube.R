#' Cube a vector
#'
#' That's it -- this function just cube a vector.
#'
#' @param x The vector to be cubed.
#'
#' @return A vector that is the cube of \code{x}.
#'
#' @details
#'
#' Inorder to build a package first load package roxygen2
#'
#' use roxygen2::roxygenize()
#'
#'
#' Here are some reasons why putting a list in this section is excessive:
#' \itemize{
#'      \item This \code{cube} function is quite simple.
#'      \item There's nothing else to say about \code{cube}.
#' }
#'
#' @examples
#' cube(1:10)
#' cube(-5)
#' @export
cube <- function(x, plot.it=FALSE) {
	pow(x, a=3, plot.it=plot.it)}
