% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/delete_loop_edges_ws.R
\name{delete_loop_edges_ws}
\alias{delete_loop_edges_ws}
\title{Delete all loop edges associated with a selection of nodes}
\usage{
delete_loop_edges_ws(graph)
}
\arguments{
\item{graph}{A graph object of class \code{dgr_graph}.}
}
\value{
A graph object of class \code{dgr_graph}.
}
\description{
With a selection of nodes in a graph, remove any associated loop edges.
}
\details{
This function makes use of an active selection of nodes (and the function
ending with \verb{_ws} hints at this).

Selections of nodes can be performed using the following node selection
(\verb{select_*()}) functions: \code{\link[=select_nodes]{select_nodes()}}, \code{\link[=select_last_nodes_created]{select_last_nodes_created()}},
\code{\link[=select_nodes_by_degree]{select_nodes_by_degree()}}, \code{\link[=select_nodes_by_id]{select_nodes_by_id()}}, or
\code{\link[=select_nodes_in_neighborhood]{select_nodes_in_neighborhood()}}.

Selections of nodes can also be performed using the following traversal
(\verb{trav_*()}) functions: \code{\link[=trav_out]{trav_out()}}, \code{\link[=trav_in]{trav_in()}}, \code{\link[=trav_both]{trav_both()}},
\code{\link[=trav_out_node]{trav_out_node()}}, \code{\link[=trav_in_node]{trav_in_node()}}, \code{\link[=trav_out_until]{trav_out_until()}}, or
\code{\link[=trav_in_until]{trav_in_until()}}.
}
\examples{
# Create an undirected, full graph
# of 5 nodes with loops retained
graph <-
  create_graph(
    directed = FALSE) \%>\%
  add_full_graph(
    n = 5,
    keep_loops = TRUE)

# Select nodes `3` and `4`
# and remove the loop edges
# associated with those nodes
graph <-
  graph \%>\%
  select_nodes_by_id(
    nodes = 3:4) \%>\%
  delete_loop_edges_ws()

# Count the number of loop
# edges remaining in the graph
graph \%>\% count_loop_edges()

}
