#' beeeeeeee
#'
#' @format buzzzzzzzz
#' @export
bee <- new_roam(
  "roam.demo",
  "bee",
  function(version) {
    read.csv(
      "https://raw.githubusercontent.com/finyang/roam/master/demo/bee_colonies.csv"
    )
  }
)
