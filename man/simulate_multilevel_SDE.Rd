% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulate_multilevel_SDE.R
\name{simulate_multilevel_SDE}
\alias{simulate_multilevel_SDE}
\title{Simulate two time-discretized process following a stochastic differential equation}
\usage{
simulate_multilevel_SDE(model, theta, discretization)
}
\arguments{
\item{model}{a list representing a hidden Markov model, e.g. \code{\link{hmm_ornstein_uhlenbeck}}}

\item{theta}{a vector of parameters as input to model functions}

\item{discretization}{lists containing stepsize, nsteps, statelength, obstimes for fine and coarse levels, 
and coarsetimes of length statelength_fine indexing time steps of coarse level}
}
\value{
two new trajectories stored as matrices of size xdimension x statelength_coarse/fine.
}
\description{
Simulate two trajectories following a stochastic differential equation using 
Euler-Maruyama at two successive discretization levels.
}
