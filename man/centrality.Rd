% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/centrality.R
\name{centrality}
\alias{centrality}
\title{Centrality measures}
\usage{
centrality(
  netwk,
  adj,
  edgelist,
  edgeweight,
  directed = TRUE,
  measure = c("degree", "closeness", "wpr"),
  degree.control = list(alpha = 1, mode = "out"),
  closeness.control = list(alpha = 1, mode = "out", method = "harmonic", distance =
    FALSE),
  wpr.control = list(gamma = 0.85, theta = 1, prior.info = NULL)
)
}
\arguments{
\item{netwk}{A \code{wdnet} object that represents the network. If
\code{NULL}, the function will compute the coefficient using either
\code{edgelist} and \code{edgeweight}, or \code{adj}.}

\item{adj}{An adjacency matrix of a weighted and directed network.}

\item{edgelist}{A two-column matrix representing edges of a directed
network.}

\item{edgeweight}{A vector representing the weight of edges.}

\item{directed}{Logical. Indicates whether the edges in \code{edgelist} or
\code{adj} are directed.}

\item{measure}{Which measure to use: "degree" (degree-based centrality),
"closeness" (closeness centrality), or "wpr" (weighted PageRank
centrality)?}

\item{degree.control}{A list of parameters passed to the degree centrality
measure:
\itemize{
\item `alpha` A tuning parameter. The value of alpha must be
nonnegative. By convention, alpha takes a value from 0 to 1 (default).
\item `mode` Which mode to compute: "out" (default) or "in"?
For undirected networks, this setting is irrelevant.}}

\item{closeness.control}{A list of parameters passed to the closeness
centrality measure:
\itemize{
\item `alpha` A tuning parameter. The value of alpha must be
nonnegative. By convention, alpha takes a value from 0 to
1 (default).
\item `mode` Which mode to compute: "out" (default) or "in"?
For undirected networks, this setting is irrelevant.
\item `method` Which method to use: "harmonic" (default) or
"standard"?
\item `distance` Whether to consider the entries in the adjacency
matrix as distances or strong connections. The default setting is
\code{FALSE}.
}}

\item{wpr.control}{A list of parameters passed to the weighted PageRank
centrality measure:
\itemize{
\item `gamma` The damping factor; it takes 0.85 (default) if not
given.
\item `theta` A tuning parameter leveraging node degree and
strength; theta = 0 does not consider edge weight; theta = 1 (default)
fully considers edge weight.
\item `prior.info` Vertex-specific prior information for restarting when
arriving at a sink. When it is not given (\code{NULL}), a random restart
is implemented.
}}
}
\value{
A list of node names and associated centrality measures
}
\description{
Computes the centrality measures of the nodes in a weighted and directed
network.
}
\note{
The degree-based centrality measure is an extension of function
  \code{strength} in package \code{igraph} and an alternative of function
  \code{degree_w} in package \code{tnet}.

  The closeness centrality measure is an extension of function
  \code{closeness} in package \code{igraph} and function \code{closeness_w}
  in package \code{tnet}. The method of computing distances between vertices
  is the \emph{Dijkstra's algorithm}.

  The weighted PageRank centrality measure is an extension of function
  \code{page_rank} in package \code{igraph}.
}
\examples{
## Generate a network according to the Erd\"{o}s-Renyi model of order 20
## and parameter p = 0.3
edge_ER <- rbinom(400, 1, 0.3)
weight_ER <- sapply(edge_ER, function(x) x * sample(3, 1))
adj_ER <- matrix(weight_ER, 20, 20)
mydegree <- centrality(
  adj = adj_ER,
  measure = "degree", degree.control =
    list(alpha = 0.8, mode = "in")
)
myclose <- centrality(
  adj = adj_ER,
  measure = "closeness", closeness.control =
    list(alpha = 0.8, mode = "out", method = "harmonic", distance = FALSE)
)
mywpr <- centrality(
  adj = adj_ER,
  measure = "wpr", wpr.control =
    list(gamma = 0.85, theta = 0.75)
)

}
\references{
\itemize{
\item Dijkstra, E.W. (1959). A note on two problems in connexion with
graphs. \emph{Numerische Mathematik}, 1, 269--271.
\item Newman, M.E.J. (2003). The structure and function of complex
networks. \emph{SIAM review}, 45(2), 167--256.
\item Opsahl, T., Agneessens, F., Skvoretz, J. (2010). Node centrality
in weighted networks: Generalizing degree and shortest paths.
\emph{Social Networks}, 32, 245--251.
\item Zhang, P., Wang, T. and Yan, J. (2022) PageRank centrality and algorithms for
weighted, directed networks with applications to World Input-Output Tables.
\emph{Physica A: Statistical Mechanics and its Applications}, 586, 126438.
\item Zhang, P., Zhao, J. and Yan, J. (2020+) Centrality measures of
networks with application to world input-output tables
}
}
