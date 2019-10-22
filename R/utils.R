#' @importFrom attempt stop_if_not
#' @importFrom curl has_internet
check_internet <- function(){
  stop_if_not(.x = has_internet(), msg = "Please check your internet connexion")
}

#' @importFrom httr status_code
check_status <- function(res){
  stop_if_not(.x = status_code(res),
              .p = ~ .x == 200,
              msg = "The API returned an error")
}

# "https://favqs.com/api/"
# https://favqs.com/api

api_url <- "https://favqs.com/api/"
search_url <- "https://favqs.com/search/"
reverse_url <- "https://favqs.com/reverse/"
