#' A Function
#'
#' This function allows you to find the correlation matrix of all numeric vector in the NBA dataset
#' @param year The year that you want to search
#' @keywords
#' @export
#' @import dplyr
#' @examples
#' cor_year(1950)

cor_year = function(year,data=nba){
  num_nba = dplyr::select_if(nba,is.numeric)
  return(cor(num_nba))
}


#  nba = read.csv("D:/assignment/gr5072-homework-5-548Latis/data/raw/Seasons_Stats_NBA.csv")
