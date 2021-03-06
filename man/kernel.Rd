% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kernel.R
\name{kernel}
\alias{kernel}
\title{Markov kernel}
\usage{
kernel(
  model,
  theta,
  discretization,
  observations,
  nparticles,
  resampling_threshold = 1,
  ref_trajectory = NULL,
  algorithm = "CPF",
  treestorage = FALSE
)
}
\arguments{
\item{model}{a list representing a hidden Markov model, e.g. \code{\link{hmm_ornstein_uhlenbeck}}}

\item{theta}{a vector of parameters as input to model functions}

\item{discretization}{list containing stepsize, nsteps, statelength and obstimes}

\item{observations}{a matrix of observations, of size nobservations x ydimension}

\item{nparticles}{number of particles}

\item{resampling_threshold}{ESS proportion below which resampling is triggered (always resample at observation times by default)}

\item{ref_trajectory}{a matrix of reference trajectory, of size xdimension x statelength; 
if missing, this function runs a standard particle filter}

\item{algorithm}{character specifying type of algorithm desired, i.e. 
\code{\link{CPF}} for conditional particle filter, 
\code{\link{CASPF}} for conditional ancestor sampling particle filter,
\code{\link{CBSPF}} for conditional backward sampling particle filter}

\item{treestorage}{logical specifying tree storage of Jacob, Murray and Rubenthaler (2013); 
if missing, this function store all states and ancestors}
}
\value{
a matrix containing a new trajectory of size xdimension x statelength.
}
\description{
Runs a Markov kernel that leaves smoothing distribution invariant.
}
