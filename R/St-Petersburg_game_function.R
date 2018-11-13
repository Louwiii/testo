#'@title St-Petersburg paradox game
#'
#'@description The functions returns a vector of net gains(money gained minues the fee)
#'
#'@param n_games : number of games to play
#'@param fee fee for play one game
#'@param seed seed for the rnadom generator (for reproducibility)
#'
#'@return a vector of gains
#'@author Louis Polet
#'@export
#'@examples
#'st_petersburg_game (10, 10, 1)
st_petersburg_game <- function( n_games,
                                 fee,
                                 seed
                                 ){ gains <- vector(mode = "double", length = n_games)

                                 set.seed(seed)

                                 for(i in 1:n_games){
                                     head <- TRUE
                                     bet <- 1
                                     while (head) {
                                         # toss a coin
                                         x <- rbinom(n = 1, size = 1, prob = 0.5)

                                         # verify the coin
                                         if(x == 0){
                                             head <- FALSE
                                         }

                                         # update the bet
                                         bet <- bet * 2
                                     }
                                     # save the result
                                     gains[i] <- bet - fee

                                 }

                                 class(gains) <- "sp_game"

                                 # if(plot) hist(gains, ...)

                                 return(gains)
}


