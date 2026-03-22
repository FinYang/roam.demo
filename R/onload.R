#' @import roam
.onLoad <- function(libname, pkgname) {
  roam::roam_activate_all("roam.demo")
}
