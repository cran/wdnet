% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rpa_control.R
\name{rpa_control_reciprocal}
\alias{rpa_control_reciprocal}
\title{Control reciprocal edges. Defined for \code{rpanet}.}
\usage{
rpa_control_reciprocal(
  group.prob = NULL,
  recip.prob = NULL,
  selfloop.recip = FALSE
)
}
\arguments{
\item{group.prob}{A vector of probability weights for sampling the group of
new nodes. Defined for directed networks. Groups are from 1 to
\code{length(group.prob)}. Its length must equal to the number of rows of
\code{recip.prob}.}

\item{recip.prob}{A square matrix giving the probability of adding a
reciprocal edge after a new edge is introduced. Defined for directed
networks. Its element \code{p_{ij}} represents the probability of adding a
reciprocal edge from node \code{A}, which belongs to group \code{i}, to
node \code{B}, which belongs to group \code{j}, immediately after a
directed edge from \code{B} to \code{A} is added.}

\item{selfloop.recip}{Logical, whether reciprocal edge of self-loops are
allowed.}
}
\value{
A list of class \code{rpacontrol} with components \code{group.prob},
  \code{recip.prob}, and \code{selfloop.recip} with meanings as explained
  under 'Arguments'.
}
\description{
Control reciprocal edges. Defined for \code{rpanet}.
}
\examples{
control <- rpa_control_reciprocal(
  group.prob = c(0.4, 0.6),
  recip.prob = matrix(runif(4), ncol = 2)
)
}
