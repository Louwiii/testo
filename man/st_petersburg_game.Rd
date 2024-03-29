% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/St-Petersburg_game_function.R
\name{st_petersburg_game}
\alias{st_petersburg_game}
\title{St-Petersburg paradox game}
\usage{
st_petersburg_game(n_games, fee, seed)
}
\arguments{
\item{n_games}{: number of games to play}

\item{fee}{fee for play one game}

\item{seed}{seed for the rnadom generator (for reproducibility)}
}
\value{
a vector of gains
}
\description{
The functions returns a vector of net gains(money gained minues the fee)
}
\examples{
st_petersburg_game (10, 10, 1)
}
\author{
Louis Polet
}
