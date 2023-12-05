#' Load the data by week number
#'
#' @param week Week number
#'
#' @return data
#' @export
#' @importFrom arrow read_parquet
#'
#' @examples
#' \dontrun{
#' Example 1: Import week 1 data:
#' load_data_week_number(1)
#' }
load_data_week_number <- function(week) {
  stopifnot(week %in% c(1, 2))
  # Construct the GitHub raw file URL
  file_name <- paste0("HPS_week", week, "_data_parquet.parquet")
  github_url <- paste0("https://github.com/ChristopherNClark/hpsrn/raw/master/data-raw/", file_name)
  # Download the file using arrow::read_parquet
  data <- arrow::read_parquet(github_url)

  return(data)
}

