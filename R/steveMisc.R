#' \code{steveMisc} package
#'
#' Miscellaneous functions for data science-ing
#'
#' See the README on
#' \href{https://github.com/SteveLane/steveMisc#readme}{GitHub}
#'
#' @docType package
#' @name steveMisc
#' @importFrom dplyr %>%
NULL

## quiets concerns of R CMD check re: the .'s that appear in pipelines
if(getRversion() >= "2.15.1") utils::globalVariables(c("."))
