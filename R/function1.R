#' A Function
#'
#' This function allows you to find whether Charlie Black, an NBA player, ever played in that year, and the games he played in each team
#' @param year The year that you want to find
#' @keywords
#' @export
#' @import dplyr
#' @examples
#' charlie_black_team_games(1950)

charlie_black_team_games = function(year£¬data=nba){
  ret = dplyr::filter(nba, Year == year) %>%
    dplyr::filter(Player == "Charlie Black") %>%
    dplyr::select(Player, G, Tm)
  if(length(row.names(ret)==0)){
    return(ret)
  } else {
    return ("Charlie Black didn't play in that year in NBA.")
  }
}


#Find which team did Charlie Black play for in that year and how many games he played.
