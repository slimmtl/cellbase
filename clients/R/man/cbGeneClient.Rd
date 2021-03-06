% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R
\name{cbGeneClient}
\alias{cbGeneClient}
\title{A method to query gene data from Cellbase web services. Please, for details on possible values for the parameters 
and  additional filters of this function refer to https://github.com/opencb/cellbase/wiki and the RESTful API 
documentation  http://bioinfo.hpc.cam.ac.uk/cellbase/webservices/}
\usage{
cbGeneClient(object, ids, resource, filter, ...)
}
\arguments{
\item{object}{an object of class CellBaseR}

\item{ids}{a character vector of gene ids to be queried}

\item{resource}{a character vector to specify the resource to be queried}

\item{...}{any extra arguments}

\item{filters}{a object of class CellBaseParam specifying additional filters for the query}
}
\value{
an object of class CellBaseResponse which holds a dataframe with the results of the query
}
\description{
A method to query gene data from Cellbase web services. Please, for details on possible values for the parameters 
and  additional filters of this function refer to https://github.com/opencb/cellbase/wiki and the RESTful API 
documentation  http://bioinfo.hpc.cam.ac.uk/cellbase/webservices/
}
\examples{
   library(cellbaseR)
   cb <- CellBaseR()
   res <- cbGeneClient(object=cb, ids=c("TP73","TET1"), resource="clinical")
}

