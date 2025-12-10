#' @export
class_pkg2 <- S7::new_class("class_pkg2")

#' @importFrom pkg1 common_generic
local({
  S7::method(common_generic, class_pkg2) <- function(x) {
    print("Calling from pkg2")
  }
})

#' @export
pkg1::common_generic

.onLoad <- function(libname, pkgname) {
  S7::methods_register()
}
