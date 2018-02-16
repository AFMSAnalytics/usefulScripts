#' Package installing and loading function
#' 
#' The usePackage function takes a single command, the name of a package, and will install it (if not installed) and then load it.
#' @param p A package name as a string in quotes.
#' @keywords use package install load library
#' @export
#' @examples 
#' usePackage("readr")

usePackage<-function(p){
  
  if (!is.element(p, installed.packages()[, 1])) {
    
    message(paste("Package", p,"not found, installing..."))
    install.packages(p, dep = TRUE)
    
  }
  
  message(paste0("Loading Package ", p, "..."))
  require(p, character.only = TRUE)
  
}