#' Inverse Box-cox transform a vector
#'
#' That's it -- this function just transform a vector by Box-Cox inverses.
#'
#' @param x The vector to be transformed.
#'
#' @param lambda The index that is used to do Box-Cox inverse transformation.
#'
#' @param plot.it logical param. True if want \code{x} against transformed results to be plotted
#'
#' @param omit.na logical param. True if want NA in \code{x} to be omited.
#'
#' @return A vector that is the Box-Cox inverse transformation of \code{x}.
#'
#' @details
#' This function may need positive values of x for certain lambda.
#'
#' Please see error message for more information.
#'
#' Here are some reasons why putting a list in this section is excessive:
#' \itemize{
#'      \item This \code{BoxCox.inv} function is quite simple.
#'      \item There's nothing else to say about \code{BoxCox.inv}.
#' }
#'
#' @examples
#' BoxCox.inv(1:10,lambda=2)
#' BoxCox.inv(-5,lambda=-1)
#' @export
BoxCox.inv <- function(x,lambda,plot.it=F,omit.na=T){
	if (is.character(x)){
		stop('This function expects x as a vector of numbers and logicals.\n',
				 'You have provided an object of characters')
	}
	if(omit.na){x <- na.omit(x)}
	bcinv <- (x*lambda+1)^(1/lambda)
	if (NaN %in% bcinv){
		stop('If lambda is ',lambda,', x should be positive')
	}else{
		if(plot.it){
			p <- ggplot2::qplot(x,bcinv)
			print(p)}
		return(bcinv)}
}
