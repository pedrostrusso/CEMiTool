% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interactions.R
\docType{methods}
\name{interactions_data}
\alias{interactions_data}
\alias{interactions_data,CEMiTool-method}
\alias{interactions_data<-}
\alias{interactions_data<-,CEMiTool-method}
\title{Retrieve and set interaction data to CEMiTool object}
\usage{
interactions_data(cem, ...)

\S4method{interactions_data}{CEMiTool}(cem)

interactions_data(cem) <- value

\S4method{interactions_data}{CEMiTool}(cem) <- value
}
\arguments{
\item{cem}{Object of class \code{CEMiTool}.}

\item{...}{parameters for igraph::graph_from_data_frame}

\item{value}{a data.frame or matrix containing two columns}
}
\value{
Object of class \code{CEMiTool}
}
\description{
Retrieve and set interaction data to CEMiTool object
}
\examples{
# Get example CEMiTool object
data(cem)
# Read example interactions data
int_df <- read.delim(system.file("extdata", "interactions.tsv", 
    package = "CEMiTool"))
# Insert interactions data
interactions_data(cem) <- int_df
# Check interactions data
interactions_data(cem)

}
