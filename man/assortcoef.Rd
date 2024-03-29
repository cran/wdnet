% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assortativity.R
\name{assortcoef}
\alias{assortcoef}
\title{Compute the assortativity coefficient(s) for a network.}
\usage{
assortcoef(netwk, edgelist, edgeweight, adj, directed, f1, f2)
}
\arguments{
\item{netwk}{A \code{wdnet} object that represents the network. If
\code{NULL}, the function will compute the coefficient using either
\code{edgelist} and \code{edgeweight}, or \code{adj}.}

\item{edgelist}{A two-column matrix representing edges.}

\item{edgeweight}{A numeric vector of edge weights with the same length as
the number of rows in edgelist. If \code{NULL}, all edges will be assigned
weight 1.}

\item{adj}{The adjacency matrix of a network.}

\item{directed}{Logical. Indicates whether the edges in \code{edgelist} or
\code{adj} are directed. It will be omitted if \code{netwk} is provided.}

\item{f1}{A vector representing the first feature of existing nodes. The
number of nodes should be equal to the length of both \code{f1} and
\code{f2}. Defined for directed networks. If \code{NULL}, out-strength will
be used.}

\item{f2}{A vector representing the second feature of existing nodes. Defined
for directed networks. If \code{NULL}, in-strength will be used.}
}
\value{
Assortativity coefficient for undirected networks, or a list of four
  assortativity coefficients for directed networks.
}
\description{
Compute the assortativity coefficient(s) for a network.
}
\note{
When the adjacency matrix is binary (i.e., directed but unweighted
  networks), \code{assortcoef} returns the assortativity coefficient proposed
  in Foster et al. (2010).
}
\examples{
set.seed(123)
control <- rpa_control_edgeweight(
  sampler = function(n) rgamma(n, shape = 5, scale = 0.2)
)
netwk <- rpanet(nstep = 10^4, control = control)
ret <- assortcoef(netwk)
ret <- assortcoef(
  edgelist = netwk$edgelist,
  edgeweight = netwk$edge.attr$weight,
  directed = TRUE
)

}
\references{
\itemize{ \item Foster, J.G., Foster, D.V., Grassberger, P. and
  Paczuski, M. (2010). Edge direction and the structure of networks.
  \emph{Proceedings of the National Academy of Sciences of the United
  States}, 107(24), 10815--10820. \item Yuan, Y. Zhang, P. and Yan, J.
  (2021). Assortativity coefficients for weighted and directed networks.
  \emph{Journal of Complex Networks}, 9(2), cnab017.}
}
