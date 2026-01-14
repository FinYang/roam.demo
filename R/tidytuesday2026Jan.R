#' tidytuesday data in 2026 Jan
#'
#' Data from the [TidyTuesday project](https://github.com/rfordatascience/tidytuesday)
#' in 2026 up to 2026-01-20.
#' @format A remote object that returns a data frame.
#' @export
tidytuesday2026Jan <- new_roam(
  "roam.demo",
  "tidytuesday2026Jan",
  function(version) {
    if ((!is.character(version)) || length(version) > 1) {
      stop("version must be a length character")
    }
    if (
      !is.na(version) && (!version %in% c("latest", "2026-01-20", "2026-01-13"))
    ) {
      stop("invalid version number")
    }
    if (is.na(version) || version %in% c("latest", "2026-01-20")) {
      roam_set_version("2026-01-20")
      read.csv(
        "https://raw.githubusercontent.com/rfordatascience/tidytuesday/refs/heads/main/data/2026/2026-01-20/apod.csv"
      )
    } else {
      roam_set_version("2026-01-13")
      read.csv(
        "https://raw.githubusercontent.com/rfordatascience/tidytuesday/refs/heads/main/data/2026/2026-01-13/africa.csv"
      )
    }
  }
)
