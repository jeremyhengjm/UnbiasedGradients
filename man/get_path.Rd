% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_path.R
\name{get_path}
\alias{get_path}
\title{Get a path from the output of a particle filter}
\usage{
get_path(model, discretization, xtrajectory, ancestries, ancestor)
}
\arguments{
\item{model}{a list representing a hidden Markov model, e.g. \code{\link{hmm_ornstein_uhlenbeck}}}

\item{discretization}{list containing stepsize, nsteps, statelength and obstimes}

\item{xtrajectory}{an array of particle states, of size statelength x xdimension x nparticles}

\item{ancestries}{a matrix of ancestor indexes, of size statelength x nparticles}

\item{ancestor}{an ancestor index at the terminal step}
}
\value{
a matrix containing a new trajectory of size xdimension x statelength.
}
\description{
Get a path from the output of a particle filter by tracing an ancestry.
}
