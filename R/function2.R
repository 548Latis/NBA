#' A Function
#'
#' This function allows you to find the oldest player in NBA in that year
#' @param year The year that you want to search
#' @keywords
#' @export
#' @import dplyr
#' @examples
#' oldest_year(1950)

oldest_year = function(year,data=nba){
  age = dplyr::filter(nba, Year == year) %>%
    dplyr::filter(Age == max(Age))  %>%
    dplyr::arrange(Player) %>%
    dplyr::select(Player)
  return(age[1,])
}


#return the first player in alphabetical order
