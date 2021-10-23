#' knit with date and correct output
#' adapted from yiuhi's rmarkdown cookbook
#'
#' Some useful keyboard shortcuts for package authoring:
#'
#'   Install Package:           'Cmd + Shift + B'
#'   Check Package:             'Cmd + Shift + E'
#'   Test Package:              'Cmd + Shift + T'

knit_date_output <- function(input, ...) {
  dir_output <- paste0(here::here(), "/output/")
  rmarkdown::render(
    input,
    output_file = paste0(
      xfun::sans_ext(input), '_', format(Sys.time(), "%Y%m%d%l%M")
    ),
    output_dir = dir_output,
    envir = globalenv()
  )
}
