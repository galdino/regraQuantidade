.onLoad <- function(lib, pkg){
  #automatically loads the dataset when package is loaded
  #do not use this in combination with lazydata=true
  utils::data(modelo, package = pkg, envir = parent.env(environment()))
}