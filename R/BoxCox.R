#' Box-cox transform a vector
#'
#' That's it -- this function just transform a vector by Box-Cox.
#'
#' @param x The vector to be transformed.
#'
#' @param lambda The index that is used to do Box-Cox transformation.
#'
#' @param plot.it logical param. True if want \code{x} against transformed results to be plotted
#'
#' @param omit.na logical param. True if want NA in \code{x} to be omited.
#'
#' @return A vector that is the Box-Cox transformation of \code{x}.
#'
#' @details
#' This function may need positive values of x for certain lambda.
#'
#' Please see error message for more information.
#'
#' Here are some reasons why putting a list in this section is excessive:
#' \itemize{
#'      \item This \code{BoxCox} function is quite simple.
#'      \item There's nothing else to say about \code{BoxCox}.
#' }
#'
#' @examples
#' BoxCox(1:10,lambda=2)
#' BoxCox(-5,lambda=-1)
#' @export
BoxCox <- function(x,lambda,plot.it=F,omit.na=T){
	if (is.character(x)){
		stop('This function expects x as a vector of numbers and logicals.\n',
				 'You have provided an object of characters')
	}
	if(omit.na){x <- na.omit(x)}
	bc <- (x^lambda-1)/lambda
	if (NaN %in% bc){
		stop('If lambda is ',lambda,', x should be positive')
	}else{
		if(plot.it){
			p <- ggplot2::qplot(x,bc)
			print(p)}
		return(bc)}
}
