% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clustercoef.R
\name{clustcoef}
\alias{clustcoef}
\title{Directed clustering coefficient}
\usage{
clustcoef(adj, method = c("Clemente","Fagiolo"), isolates = "zero")
}
\arguments{
\item{adj}{is an adjacency matrix of an weighted and directed network.}

\item{method}{which method used to compute clustering coefficients: Clemente
and Grassi (2018) or Fagiolo (2007).}

\item{isolates}{character, defines how to treat vertices with degree zero 
and one. If "zero", then their clustering coefficient is returned as 0 
and are included in the averaging. Otherwise, their clustering coefficient 
is NaN and are excluded in the averaging. Default value is "zero".}
}
\value{
lists of local clustering coefficients (in terms of a vector), global
  clustering coefficient (in terms of a scalar) and number of weighted
  directed triangles (in terms of a vector) base on \code{total}, \code{in},
  \code{out}, middleman (\code{middle}), or \code{cycle} triplets.
}
\description{
Compute the clustering coefficient of a weighted and directed network.
}
\note{
Self-loops (if exist) are removed prior to the computation of
  clustering coefficient. When the adjacency matrix is symmetric (i.e.,
  undirected but possibly unweighted networks), \code{clustcoef} returns
  local and global clustering coefficients proposed by Barrat et al. (2010).
}
\examples{
## Generate a network according to the Erd\"{o}s-Renyi model of order 20
## and parameter p = 0.3
edge_ER <- rbinom(400,1,0.3)
weight_ER <- sapply(edge_ER, function(x) x*sample(3,1))
adj_ER <- matrix(weight_ER,20,20)
mycc <- clustcoef(adj_ER, method = "Clemente")
system.time(mycc)

}
\references{
\itemize{ 
  \item Barrat, A., Barth\'{e}lemy, M., Pastor-Satorras,
  R. and Vespignani, A. (2004). The architecture of complex weighted
  networks. \emph{Proceddings of National Academy of Sciences of the United
  States of America}, 101(11), 3747--3752. 
  \item Clemente, G.P. and Grassi,
  R. (2018). Directed clustering in weighted networks: A new perspective.
  \emph{Chaos, Solitons & Fractals}, 107, 26--38. 
  \item Fagiolo, G. (2007).
  Clustering in complex directed networks. \emph{Physical Review E}, 76,
  026107. 
}
}
