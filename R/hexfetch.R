#' Extract Package hexes to target directory
#'
#' @param x character, name of packages
#' @param dir character, name of folder where hexes will be copied to. Will be
#' created if not available.
#'
#' @return The new path (invisibly).
#' @export
#'
#' @examples
#' my_dir <- tempdir()
#' hexfetch("rlang", my_dir)
#' fs::dir_info(my_dir)
hexfetch <- function(x, dir = NULL) {
  if (is.null(dir)) {
    rlang::abort("please specify `dir`.")
  }

  paths <- fs::path(.libPaths()[1], x, "help", "figures", "logo.png")

  if (!fs::dir_exists(dir)) {
    fs::dir_create(dir)
  }
  paths_out <- fs::path(dir, x, ext = fs::path_ext(paths))

  exists <- fs::file_exists(paths)

  paths_out <- paths_out[exists]
  paths <- paths[exists]

  rlang::inform(
    glue::glue(
      "Unable to find hex files for the following packages:\n",
      glue::glue_collapse(x[!exists], sep = ", ", last = ", and ")
    )
  )

  fs::file_copy(paths, paths_out, overwrite = TRUE)
}
