# function to install packages if missing by user
usePackage<-function(p){
  # load a package if installed, else load after installation.
  # Args:
  #   p: package name in quotes
  
  if (!is.element(p, installed.packages()[,1])){
    message(paste("Package:",p,"not found, installing now..."))
    install.packages(p, dep = TRUE)}
  message(paste("Loading Package:",p))
  require(p, character.only = TRUE)  
}


# Example
usePackage("readr")  # import/export csv
