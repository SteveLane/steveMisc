#' Provides a descriptive summary of grouped variable.
#'
#' This function is a convenience function to produce a summary of a grouped
#'     variable.
#' @param df The data_frame containing the variable to be \code{describe}d.
#' @param group_var The variable to be described. Expected to be a bare variable
#'     name.
#' @return A data_frame containing the number of entries in each category, the
#'     proportion of each category, and the cumulative proportion. The
#'     data_frame is sorted by descending number of entries.
#' @examples
#' my_data <- dplyr::data_frame(g1 = c(1, 1, 2, 2, 2))
#' describe(my_data, g1)
#' my_data %>% describe(g1)
#' @export
describe <- function(df, group_var) {
    `%>%` <- magrittr::`%>%`
    group_var <- rlang::enquo(group_var)
    df %>%
        dplyr::group_by(!!group_var) %>%
        dplyr::summarise(n = dplyr::n()) %>%
        dplyr::arrange(dplyr::desc(n)) %>%
        dplyr::mutate(p = n / sum(n),
                      cum_p = cumsum(p))
}
