% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/joint_dist.R
\name{cvxr.control}
\alias{cvxr.control}
\title{Parameters passed to CVXR::solver().}
\usage{
cvxr.control(
  solver = "ECOS",
  ignore_dcp = FALSE,
  warm_start = FALSE,
  verbose = FALSE,
  parallel = FALSE,
  gp = FALSE,
  feastol = NULL,
  reltol = NULL,
  abstol = NULL,
  num_iter = NULL,
  ...
)
}
\arguments{
\item{solver}{(Optional) A string indicating the solver to use. Defaults to
"ECOS".}

\item{ignore_dcp}{(Optional) A logical value indicating whether to override
the DCP check for a problem.}

\item{warm_start}{(Optional) A logical value indicating whether the previous
solver result should be used to warm start.}

\item{verbose}{(Optional) A logical value indicating whether to print
additional solver output.}

\item{parallel}{(Optional) A logical value indicating whether to solve in
parallel if the problem is separable.}

\item{gp}{(Optional) A logical value indicating whether the problem is a
geometric program. Defaults to FALSE.}

\item{feastol}{The feasible tolerance on the primal and dual residual.}

\item{reltol}{The relative tolerance on the duality gap.}

\item{abstol}{The absolute tolerance on the duality gap.}

\item{num_iter}{The maximum number of iterations.}

\item{...}{Additional options that will be passed to the specific solver. In
general, these options will override any default settings imposed by CVXR.}
}
\value{
A list containing the parameters.
}
\description{
Defined for the convex optimization problems for solving \code{eta}. The
control list is passed to \code{dprewire} and \code{dprewire.range}.
}
\examples{
control <- cvxr.control(solver = "OSQP", abstol = 1e-5)
}
